<!DOCTYPE HTML>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="/static/styles.css">
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Verkefni 5 - Viðburðir</title>
</head>
<body2>

    % for event in data['results']:
        <div class="event">
            <h2>{{event['eventHallName']}}</h2>
            <h2>{{event['eventDateName']}}</h2>
            <h2>{{event['dateOfShow'][:10]}}</h2>
            <img src="{{event['imageSource']}}" alt="">
        </div>
    %end
</body2>
