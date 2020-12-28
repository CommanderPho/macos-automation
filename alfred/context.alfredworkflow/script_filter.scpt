JsOsaDAS1.001.00bplist00�Vscript_�ObjC.import('stdlib')
var icalNow = $.getenv('ICAL_NOW')

const WEBSITE_PATTERNS = [
  {name: 'Zoom', hostname: 'zoom.us'},
  {name: 'Google Docs', hostname: 'docs.google.com'},
  {name: 'Greenhouse', hostname: 'greenhouse.io'},
]

function websiteTitle(searchHostname) {
  const match = WEBSITE_PATTERNS
    .find(({name, hostname}) =>searchHostname === hostname || searchHostname.endsWith(`.${hostname}`));
  return match ? match.name : searchHostname;
}

function schemeUrl(scheme) {
  return {
    'omnifocus': 'OmniFocus'
  }[scheme] || scheme;
}

MAPPINGS = {
  'http': 'Zoom',
  'docs.google.com': 'Google Docs',
}

var defaultLink;

if (icalNow && icalNow !== "") {
  var Calendar = Application("Calendar");
  var input = JSON.parse(icalNow);
  var {eventId, calendarId} = input;
  var event = Calendar.calendars.byId(calendarId).events.byId(eventId);
  var eventDetails = `${event.location()}\n${event.url()}\n${event.summary()}\n${event.description()}`
  var allUris = [...eventDetails.matchAll(/[a-z]+:\/\/\/?[^ <>"':\,\n]+/g)]
    .map(([match]) => match);
  var uniqueUris = [...new Set(allUris)];
  var links = uniqueUris
    .map((uri) => {
      var [_, scheme, hostname] = uri.match(/^([a-z]+):\/\/\/?([^/?]+)/i);
      let title;

      if (scheme === 'https' || scheme === 'http') {
        title = websiteTitle(hostname);
      } else {
        title = schemeUrl(scheme);
      }

      return {
        title: `${event.summary()} - ${title}`,
        subtitle: uri,
        arg: uri,
      }
    });
  var defaultLink = {
    title: event.summary(),
    subtitle: 'Jump to the event in Calendar...'
  }
  
} else {
  var links = [];
  var defaultLink = {
    title: 'Go to Today',
  }
}

JSON.stringify({items: [...links, defaultLink]});
                              � jscr  ��ޭ