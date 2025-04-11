<!DOCTYPE html>
<html lang="en" class="tee">

<head>
    <meta charset="utf-8">
    <title>Heizemod</title>

    <!-- Schema.org Markup -->
    <meta itemprop="name" content="Heizemod">
    <meta itemprop="description" content="Sourcebans for Heizemod">
    <meta itemprop="image" content="https://heizemod.us/images/blackcrown.png">

    <!-- Open Graph -->
    <meta property="og:url" content="https://heizemod.us/">
    <meta property="og:type" content="website">
    <meta property="og:title" content="Heizemod">
    <meta property="og:description" content="Sourcebans for Heizemod">
    <meta property="og:image" content="https://heizemod.us/images/blackcrown.png">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="Heizemod">
    <meta name="twitter:description" content="Sourcebans for Heizemod">
    <meta name="twitter:image" content="https://heizemod.us/images/blackcrown.png">

    <!-- General -->
    <meta name="theme-color" content="#050101">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Fonts and Styles -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <style id="colorTheme" type="text/css"></style>

    <link rel="Shortcut Icon" href="themes/{$theme}/images/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="themes/{$theme}/style/global.css" />
    <link rel="stylesheet" type="text/css" href="themes/{$theme}/style/global.css.map" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.5.2/css/all.css">

    <!-- Scripts -->
    <script type="text/javascript" src="themes/{$theme}/scripts/initial.js"></script>
    <script type="text/javascript" src="themes/{$theme}/scripts/sourcebans.js"></script>
    <script type="text/javascript" src="./scripts/mootools.js"></script>
    <script type="text/javascript" src="./scripts/contextMenoo.js"></script>
    {$xajax}
</head>

<body>
    <header class="header">
        <div class="layout_container responsive_hide:mobile flex flex-jc:space-between flex-ai:center">
            <div class="flex flex-fd:column text:left">
                <a href="./index.php?p=home" class="header_logo">
                    <img src="images/{$logo}" alt="SourceBans Logo" />
                </a>
            </div>
            <div class="flex flex-fd:column text:right responsive_show:desktop">
            {literal}
                <form method="get" action="index.php">
                    <input type="hidden" name="p" value="banlist" />
                </form>
                <form method="get" action="index.php">
                    <input type="hidden" name="p" value="commslist" />
                </form> 
            {/literal}
            </div>
        </div>
    </header>

    <link rel="stylesheet" href="{$theme_url}style.css">
    <div id="particles-js"></div>
