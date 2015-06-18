<!DOCTYPE html>
<html>
<head>
    <title>{browserTitle}</title>
    <!-- BEGIN metaTags -->
    {function.buildMetaTag}
    <!-- END metaTags -->
    <link rel="stylesheet" type="text/css" href="{config.relative_path}/stylesheet.css?{css-buster}" />
    <!-- BEGIN linkTags -->
    <link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
    <!-- END linkTags -->
    <!-- IF useCustomJS -->
    {customJS}
    <!-- ENDIF useCustomJS -->
    <!-- IF useCustomCSS -->
    <style type="text/css">{customCSS}</style>
    <!-- ENDIF useCustomCSS -->
</head>

<body class="welcome">