


<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta content="origin-when-crossorigin" name="referrer" />
    
    <title>LabBD-ES2/programacao_BD.sql at master · eiguike/LabBD-ES2</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="eiguike/LabBD-ES2" name="twitter:title" /><meta content="Contribute to LabBD-ES2 development by creating an account on GitHub." name="twitter:description" /><meta content="https://avatars3.githubusercontent.com/u/3219767?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars3.githubusercontent.com/u/3219767?v=3&amp;s=400" property="og:image" /><meta content="eiguike/LabBD-ES2" property="og:title" /><meta content="https://github.com/eiguike/LabBD-ES2" property="og:url" /><meta content="Contribute to LabBD-ES2 development by creating an account on GitHub." property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/OTU2MDg5NTo4MWM3NmNmMmEwZDdjODEyMWMwMzlkMDBiYWZiZmIzMjplYmU0YTIwMzU1ZTMxYWMxNGMyNzQxMDM2OWZlYWQ2YmExMjdjYTZkNjM2ZDIzYzYyYzUyNzA1NGRhYzMwNjk1--8844f39dfef13f484920750621195c81d23b7eb7">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="B1BD4EB4:06C1:1898A22:5571FAEC" name="octolytics-dimension-request_id" /><meta content="9560895" name="octolytics-actor-id" /><meta content="GabrielaMartins" name="octolytics-actor-login" /><meta content="6027e589e1413ae83ae43a86cf7daafa3659e17baffafb22d5365976cfce159c" name="octolytics-actor-hash" />
    <meta content="/private/private/blob/show" name="analytics-location" />
    <meta content="Rails, view, blob#show" name="analytics-event" />
    <meta class="js-ga-set" name="dimension1" content="Logged In">
    <meta class="js-ga-set" name="dimension2" content="Header v3">
    <meta name="is-dotcom" content="true">
      <meta name="hostname" content="github.com">
    <meta name="user-login" content="GabrielaMartins">

    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="z+A+LgVNLQaGp8jz+Xf8JD5wuSKR+JiYgNbfj+OcXHmdn3fxJZibq8lMnM+XJcJCpG+pSyAA7x0MYhr4I1b7rA==" name="csrf-token" />

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github/index-6967b378b26829cc5a2ea2ad4209ff0af50f2a65057962219dc9dcf8942683f0.css" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2/index-73bfe123ff406f4bf8959a28667410beaac1485e71c92d4725a3d7afc45fc4c5.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="30cf7eb6838f7e628d093c8366abfa24">

      
  <meta name="description" content="Contribute to LabBD-ES2 development by creating an account on GitHub.">
  <meta name="go-import" content="github.com/eiguike/LabBD-ES2 git https://github.com/eiguike/LabBD-ES2.git">

  <meta content="3219767" name="octolytics-dimension-user_id" /><meta content="eiguike" name="octolytics-dimension-user_login" /><meta content="32396094" name="octolytics-dimension-repository_id" /><meta content="eiguike/LabBD-ES2" name="octolytics-dimension-repository_nwo" /><meta content="false" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="32396094" name="octolytics-dimension-repository_network_root_id" /><meta content="eiguike/LabBD-ES2" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/eiguike/LabBD-ES2/commits/master.atom?token=AJHjPzaNqeT-DLrebCKmzBrnn5_ZQZUXks6zfy12wA%3D%3D" rel="alternate" title="Recent Commits to LabBD-ES2:master" type="application/atom+xml">

  </head>


  <body class="logged_in  env-production windows vis-private page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      


        <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <form accept-charset="UTF-8" action="/eiguike/LabBD-ES2/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/eiguike/LabBD-ES2/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
      </div>

      <ul class="header-nav left" role="navigation">
          <li class="header-nav-item explore">
            <a class="header-nav-link" href="/explore" data-ga-click="Header, go to explore, text:explore">Explore</a>
          </li>
            <li class="header-nav-item">
              <a class="header-nav-link" href="https://gist.github.com" data-ga-click="Header, go to gist, text:gist">Gist</a>
            </li>
            <li class="header-nav-item">
              <a class="header-nav-link" href="/blog" data-ga-click="Header, go to blog, text:blog">Blog</a>
            </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://help.github.com" data-ga-click="Header, go to help, text:help">Help</a>
          </li>
      </ul>

      
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name" href="/GabrielaMartins" data-ga-click="Header, go to profile, text:username">
      <img alt="@GabrielaMartins" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/9560895?v=3&amp;s=40" width="20" />
      <span class="css-truncate">
        <span class="css-truncate-target">GabrielaMartins</span>
      </span>
    </a>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link js-menu-target tooltipped tooltipped-s" href="/new" aria-label="Create new..." data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu">
        
<li>
  <a href="/new" data-ga-click="Header, create new repository, icon:repo"><span class="octicon octicon-repo"></span> New repository</a>
</li>
<li>
  <a href="/organizations/new" data-ga-click="Header, create new organization, icon:organization"><span class="octicon octicon-organization"></span> New organization</a>
</li>


  <li class="dropdown-divider"></li>
  <li class="dropdown-header">
    <span title="eiguike/LabBD-ES2">This repository</span>
  </li>
    <li>
      <a href="/eiguike/LabBD-ES2/issues/new" data-ga-click="Header, create new issue, icon:issue"><span class="octicon octicon-issue-opened"></span> New issue</a>
    </li>

      </ul>
    </div>
  </li>

  <li class="header-nav-item">
      <span class="js-socket-channel js-updatable-content"
        data-channel="notification-changed:GabrielaMartins"
        data-url="/notifications/header">
      <a href="/eiguike/LabBD-ES2/notifications" aria-label="You have unread notifications in this repository" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:unread" data-hotkey="g n">
          <span class="mail-status unread"></span>
          <span class="octicon octicon-inbox"></span>
</a>  </span>

  </li>

  <li class="header-nav-item">
    <a class="header-nav-link tooltipped tooltipped-s" href="/settings/profile" id="account_settings" aria-label="Settings" data-ga-click="Header, go to settings, icon:settings">
      <span class="octicon octicon-gear"></span>
    </a>
  </li>

  <li class="header-nav-item">
    <form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="LfsquWo14N0ypaa6nhpfNI8niBk0IJZxoh8Ua8SzZoBGPFROybFXgwt659AEAbVrW5qtUBM6uqDZKeUKEEhM5g==" /></div>
      <button class="header-nav-link sign-out-button tooltipped tooltipped-s" aria-label="Sign out" data-ga-click="Header, sign out, icon:logout">
        <span class="octicon octicon-sign-out"></span>
      </button>
</form>  </li>

</ul>



    
  </div>
</div>

        

        


      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">

        
<ul class="pagehead-actions">

  <li>
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="53NOVXoeu8aLdHWKPE40jHJGaUGTUMeY3rGAlANkeXL3ZVaidKItOYlXfCwmqSa6W4LB8MQtpf5fyag/LTm8tg==" /></div>    <input id="repository_id" name="repository_id" type="hidden" value="32396094" />

      <div class="select-menu js-menu-container js-select-menu">
        <a href="/eiguike/LabBD-ES2/subscription"
          class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
          data-ga-click="Repository, click Watch settings, action:blob#show">
          <span class="js-select-button">
            <span class="octicon octicon-eye"></span>
            Unwatch
          </span>
        </a>
        <a class="social-count js-social-count" href="/eiguike/LabBD-ES2/watchers">
          5
        </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="select-menu-title">Notifications</span>
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
            </div>

            <div class="select-menu-list js-navigation-container" role="menu">

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_included" name="do" type="radio" value="included" />
                  <span class="select-menu-item-heading">Not watching</span>
                  <span class="description">Be notified when participating or @mentioned.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Watch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                  <span class="select-menu-item-heading">Watching</span>
                  <span class="description">Be notified of all conversations.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Unwatch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_ignore" name="do" type="radio" value="ignore" />
                  <span class="select-menu-item-heading">Ignoring</span>
                  <span class="description">Never be notified.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-mute"></span>
                    Stop ignoring
                  </span>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container on">

    <form accept-charset="UTF-8" action="/eiguike/LabBD-ES2/unstar" class="js-toggler-form starred js-unstar-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="1f4RuSN95hLpFjXoCfaWW0l2DTn294tG+o8057UVzHnCatUv9PlV5wYXE7uJMlgR4ZQELZsJO6TzYlCUZUEsog==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar eiguike/LabBD-ES2"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/eiguike/LabBD-ES2/stargazers">
          1
        </a>
</form>
    <form accept-charset="UTF-8" action="/eiguike/LabBD-ES2/star" class="js-toggler-form unstarred js-star-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="YIRZhr7JIt4geBz9RPLJdXs2D/d48Cp0bPSkB37JsJvfniA1G40CCfGtdIWngsSCX8xiZV/NVJltYu/+BjM0gg==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star eiguike/LabBD-ES2"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/eiguike/LabBD-ES2/stargazers">
          1
        </a>
</form>  </div>

  </li>

        <li>
          <form accept-charset="UTF-8" action="/eiguike/LabBD-ES2/fork" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="LL6rkvXmFjoFq1MFHXxW9Wsp6XxHkjFo4THJIcmL8iinJucC+/rUY6DVBzJE64Q3sDed84D2vQAbPCzBkx7LvA==" /></div>
            <button
                type="submit"
                class="btn btn-sm btn-with-count"
                data-ga-click="Repository, show fork modal, action:blob#show; text:Fork"
                title="Fork your own copy of eiguike/LabBD-ES2 to your account"
                aria-label="Fork your own copy of eiguike/LabBD-ES2 to your account">
              <span class="octicon octicon-repo-forked"></span>
              Fork
            </button>
            <a href="/eiguike/LabBD-ES2/network" class="social-count">0</a>
</form>        </li>

</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title private">
          <span class="mega-octicon octicon-lock"></span>
          <span class="author"><a href="/eiguike" class="url fn" itemprop="url" rel="author"><span itemprop="title">eiguike</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/eiguike/LabBD-ES2" data-pjax="#js-repo-pjax-container">LabBD-ES2</a></strong>
            <span class="repo-private-label">private</span>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/eiguike/LabBD-ES2/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/eiguike/LabBD-ES2" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /eiguike/LabBD-ES2">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/eiguike/LabBD-ES2/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /eiguike/LabBD-ES2/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/eiguike/LabBD-ES2/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /eiguike/LabBD-ES2/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Wiki">
        <a href="/eiguike/LabBD-ES2/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g w" data-selected-links="repo_wiki /eiguike/LabBD-ES2/wiki">
          <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>
  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/eiguike/LabBD-ES2/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /eiguike/LabBD-ES2/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/eiguike/LabBD-ES2/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /eiguike/LabBD-ES2/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="js-clone-url clone-url open"
  data-protocol-type="http">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/eiguike/LabBD-ES2.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="ssh">
  <h3><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="git@github.com:eiguike/LabBD-ES2.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="subversion">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/eiguike/LabBD-ES2" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<div class="clone-options">You can clone with
  <form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="iXCTpLZQdQM6kQWpKDQ5LLSgwQLTDMbnk5QgRFHsHUcilZMWA8R4ZA8joqfSYH06ZDDNqNrACspkaP6KyX3lZg==" /></div><button class="btn-link js-clone-selector" data-protocol="http" type="submit">HTTPS</button></form>, <form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="1iPQDPqD52vCmCLUQNbjFcMfr/emLxUdwFoj/QIn9TVgowfQvqDUZA2BV5LeR3Hkv0ie75bt12OKreP0CApAhg==" /></div><button class="btn-link js-clone-selector" data-protocol="ssh" type="submit">SSH</button></form>, or <form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="+9CYbzdpPSDsCo98uv6TxYrNBnhHGPl5Fc3/w4gLlBQfVMsC3ilaXt/j5qne6KIHH9DGR7IMEhlmONhTfBaAfg==" /></div><button class="btn-link js-clone-selector" data-protocol="subversion" type="submit">Subversion</button></form>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</div>


  <a href="github-windows://openRepo/https://github.com/eiguike/LabBD-ES2" class="btn btn-sm sidebar-button" title="Save eiguike/LabBD-ES2 to your computer and use it in GitHub Desktop." aria-label="Save eiguike/LabBD-ES2 to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/eiguike/LabBD-ES2/archive/master.zip"
                   class="btn btn-sm sidebar-button"
                   aria-label="Download the contents of eiguike/LabBD-ES2 as a zip file"
                   title="Download the contents of eiguike/LabBD-ES2 as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>

          

<a href="/eiguike/LabBD-ES2/blob/a0414dc3149dd3ec5b27acd34f398c818b052d1d/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:229e311b9c375aa4aed354d19898c32c -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Find or create a branch…" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/eiguike/LabBD-ES2/blob/aprimoramento_buscaNormal/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql"
               data-name="aprimoramento_buscaNormal"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="aprimoramento_buscaNormal">
                aprimoramento_buscaNormal
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/eiguike/LabBD-ES2/blob/implementacao_controlView/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql"
               data-name="implementacao_controlView"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="implementacao_controlView">
                implementacao_controlView
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/eiguike/LabBD-ES2/blob/implementando_procedure/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql"
               data-name="implementando_procedure"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="implementando_procedure">
                implementando_procedure
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/eiguike/LabBD-ES2/blob/master/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <form accept-charset="UTF-8" action="/eiguike/LabBD-ES2/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="3dd8W4vxjv/GQXrM3tAjWQmpHc/Rw3RJRSuv8H6TvmA1XsWl7j9mkkZqGTaM9z9I5zK2guYcyk33GWfJd32M1Q==" /></div>
            <span class="octicon octicon-git-branch select-menu-item-icon"></span>
            <div class="select-menu-item-text">
              <span class="select-menu-item-heading">Create branch: <span class="js-new-item-name"></span></span>
              <span class="description">from ‘master’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="master">
            <input type="hidden" name="path" id="path" value="Dados Abertos - LabBDES2/programacao_BD.sql">
</form>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="btn-group right">
    <a href="/eiguike/LabBD-ES2/find/master"
          class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/eiguike/LabBD-ES2" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">LabBD-ES2</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/eiguike/LabBD-ES2/tree/master/Dados%20Abertos%20-%20LabBDES2" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">Dados Abertos - LabBDES2</span></a></span><span class="separator">/</span><strong class="final-path">programacao_BD.sql</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="@valdeirsp" class="avatar" height="24" src="https://avatars2.githubusercontent.com/u/9802150?v=3&amp;s=48" width="24" />
        <span class="author"><a href="/valdeirsp" rel="contributor">valdeirsp</a></span>
        <time datetime="2015-05-31T05:18:32Z" is="relative-time">May 31, 2015</time>
        <div class="commit-title">
            <a href="/eiguike/LabBD-ES2/commit/a0414dc3149dd3ec5b27acd34f398c818b052d1d" class="message" data-pjax="true" title="Adição de indice btree em despesa(dataano)">Adição de indice btree em despesa(dataano)</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="#blob_contributors_box" rel="facebox">
          <strong>3</strong>
           contributors
        </a>
      </p>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="eiguike" href="/eiguike/LabBD-ES2/commits/master/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql?author=eiguike"><img alt="@eiguike" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/3219767?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="valdeirsp" href="/eiguike/LabBD-ES2/commits/master/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql?author=valdeirsp"><img alt="@valdeirsp" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/9802150?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="GabrielaMartins" href="/eiguike/LabBD-ES2/commits/master/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql?author=GabrielaMartins"><img alt="@GabrielaMartins" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/9560895?v=3&amp;s=40" width="20" /> </a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="@eiguike" height="24" src="https://avatars1.githubusercontent.com/u/3219767?v=3&amp;s=48" width="24" />
            <a href="/eiguike">eiguike</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@valdeirsp" height="24" src="https://avatars2.githubusercontent.com/u/9802150?v=3&amp;s=48" width="24" />
            <a href="/valdeirsp">valdeirsp</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@GabrielaMartins" height="24" src="https://avatars1.githubusercontent.com/u/9560895?v=3&amp;s=48" width="24" />
            <a href="/GabrielaMartins">GabrielaMartins</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
    <div class="file-actions">

      <div class="btn-group">
        <a href="/eiguike/LabBD-ES2/raw/master/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql" class="btn btn-sm " id="raw-url">Raw</a>
          <a href="/eiguike/LabBD-ES2/blame/master/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql" class="btn btn-sm js-update-url-with-hash">Blame</a>
        <a href="/eiguike/LabBD-ES2/commits/master/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql" class="btn btn-sm " rel="nofollow">History</a>
      </div>

        <a class="octicon-btn tooltipped tooltipped-nw"
           href="github-windows://openRepo/https://github.com/eiguike/LabBD-ES2?branch=master&amp;filepath=Dados%20Abertos%20-%20LabBDES2%2Fprogramacao_BD.sql"
           aria-label="Open this file in GitHub for Windows"
           data-ga-click="Repository, open with desktop, type:windows">
            <span class="octicon octicon-device-desktop"></span>
        </a>

            <form accept-charset="UTF-8" action="/eiguike/LabBD-ES2/edit/master/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="w7XDzjyL5Odr/p2Iq1IUdAZP+z6KmybSXbEr3CpKsTN/U0nF6qdEG4qH94+1Q9b5y5iSojTkk4vJRUIsDh/OCQ==" /></div>
              <button class="octicon-btn tooltipped tooltipped-n" type="submit" aria-label="Edit this file" data-hotkey="e" data-disable-with>
                <span class="octicon octicon-pencil"></span>
              </button>
</form>
          <form accept-charset="UTF-8" action="/eiguike/LabBD-ES2/delete/master/Dados%20Abertos%20-%20LabBDES2/programacao_BD.sql" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="+igjLMaaaKQrdZdWoi0P5kmmyVmZKBHqWey/yOOPsACblfp6iWO/qhIfzerymW9v+UtcH+lmwXIld79aNtXI0A==" /></div>
            <button class="octicon-btn octicon-btn-danger tooltipped tooltipped-n" type="submit" aria-label="Delete this file" data-disable-with>
              <span class="octicon octicon-trashcan"></span>
            </button>
</form>    </div>

    <div class="file-info">
        <span class="file-mode" title="File mode">executable file</span>
        <span class="file-info-divider"></span>
        221 lines (176 sloc)
        <span class="file-info-divider"></span>
      8.651 kB
    </div>
  </div>
  
  <div class="blob-wrapper data type-plpgsql">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- PROJETO INTEGRADO</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- GRUPO 8 - PROGRAMA + NATUREZA DA DESPESA</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Entrega Final - Script de Programação do Banco de Dados</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- </span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Alunos:</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- HENRIQUE EIHARA: 			490016</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- GABRIELA DE JESUS MARTINS: 	489689</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- GUSTAVO RODRIGUES: 			489999</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- VALDEIR SOARES PEROZIM: 		489786</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-c">---------------------------------------------------------------------------------------------------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--VIEWS</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">VIEW</span> <span class="pl-en">CodMunicipio</span>(codigo) <span class="pl-k">AS</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line"><span class="pl-k">SELECT</span> codigo, descricao</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line"><span class="pl-k">FROM</span> municipio;</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">VIEW</span> <span class="pl-en">NaturezaView</span> <span class="pl-k">AS</span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-k">SELECT</span> codigo, descricao</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line"><span class="pl-k">FROM</span> natureza;</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">VIEW</span> <span class="pl-en">ProgramaView</span>(codigo, descricao) <span class="pl-k">AS</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line"><span class="pl-k">SELECT</span> codigo, descricaointernamunicipio</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line"><span class="pl-k">FROM</span> programa;</td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line"><span class="pl-c">---------------------------------------------------------------------------------------------------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line">	<span class="pl-c">--TRIGGER</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line">	<span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">HISTORICO</span> (</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line">		COD <span class="pl-k">SERIAL</span> <span class="pl-k">NOT NULL</span> <span class="pl-k">PRIMARY KEY</span>,</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line">		TIPO_CONSULTA <span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>),</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line">		DATA <span class="pl-k">DATE</span>,</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">		HORARIO <span class="pl-k">TIME</span></td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line">	);</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">	<span class="pl-k">CREATE OR REPLACE</span> <span class="pl-k">FUNCTION</span> <span class="pl-en">HISTORICO_F</span>() RETURNS trigger <span class="pl-k">AS</span> $HISTORICO_F$</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">	DECLARE valAntigo <span class="pl-k">INTEGER</span>;</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">		<span class="pl-k">BEGIN</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">SELECT</span> <span class="pl-c1">COUNT</span>(COD) INTO valAntigo <span class="pl-k">FROM</span> HISTORICO;</td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line">			IF(valAntigo <span class="pl-k">!=</span> <span class="pl-c1">0</span>) THEN</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">SELECT</span> <span class="pl-c1">MAX</span>(COD) INTO valAntigo <span class="pl-k">FROM</span> HISTORICO;</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line">				<span class="pl-c1">NEW</span>.<span class="pl-c1">COD</span> :<span class="pl-k">=</span> valAntigo<span class="pl-k">+</span><span class="pl-c1">1</span>;</td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line">			END IF;</td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line">			<span class="pl-c1">NEW</span>.<span class="pl-c1">DATA</span> :<span class="pl-k">=</span> <span class="pl-c1">current_date</span>;</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line">			<span class="pl-c1">NEW</span>.<span class="pl-c1">HORARIO</span> :<span class="pl-k">=</span> <span class="pl-c1">current_time</span>;			</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line">			RETURN NEW;</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line">		END;</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">	$HISTORICO_F$ LANGUAGE plpgsql;</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">	<span class="pl-c">-- CRIACAO DA TRIGGER EM HISTORICO, ANTES DE REALIZAR UMA INSERCAO</span></td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line">	<span class="pl-k">CREATE</span> <span class="pl-k">TRIGGER</span> <span class="pl-en">HISTORICO_F</span> BEFORE INSERT <span class="pl-k">ON</span> HISTORICO</td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line">	FOR EACH ROW EXECUTE PROCEDURE HISTORICO_F();</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line"><span class="pl-c">----------------------------------------------------------------------------------------------------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--OTIMIZAÇÕES</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">INDEX</span> <span class="pl-en">indice_codNatureza</span> <span class="pl-k">ON</span> despesa USING hash (codigonatureza); <span class="pl-c">-- INDICE PARA CONSULTA SIMPLES -NATUREZA</span></td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">INDEX</span> <span class="pl-en">indice_codPrograma</span> <span class="pl-k">ON</span> despesa USING hash (codigoprograma); <span class="pl-c">-- INDICE PARA CONSULTA SIMPLES -PROGRAMA</span></td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">INDEX</span> <span class="pl-en">indice_dataano</span> 	<span class="pl-k">ON</span> despesa using btree(dataano);		<span class="pl-c">-- PARA CONSULTA DE TRATAMENTO DE PARÂMETROS NÃO INFORMADOS NAS PROCEDURES</span></td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line"><span class="pl-c">----------------------------------------------------------------------------------------------------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--STORE PROCEDURES CONSULTAS SIMPLES</span></td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE OR REPLACE</span> <span class="pl-k">FUNCTION</span> <span class="pl-en">CONSULTA_SIMPLES_NATUREZA</span>(<span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>), <span class="pl-k">VARCHAR</span> (<span class="pl-c1">100</span>), <span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>))</td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line">RETURNS TABLE(cod <span class="pl-k">INTEGER</span>, descricao <span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>), gasto <span class="pl-k">NUMERIC</span>) <span class="pl-k">AS</span> $$</td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line">DECLARE natDesc ALIAS FOR $<span class="pl-c1">1</span>;</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line">cidade ALIAS FOR $<span class="pl-c1">2</span>;</td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line">tipo_consulta ALIAS FOR $<span class="pl-c1">3</span>;</td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line"><span class="pl-k">BEGIN</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line">	IF cidade IS <span class="pl-k">NULL</span> THEN</td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line">		cidade :<span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&#39;</span>Campinas<span class="pl-pds">&#39;</span></span>;</td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line">	END IF;</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line">	IF natDesc IS <span class="pl-k">NULL</span> THEN <span class="pl-c">--RETORNA A AGREGAÇÃO PARA TODAS AS NATUREZAS</span></td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line">		RETURN QUERY</td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">SELECT</span>  <span class="pl-c1">N</span>.<span class="pl-c1">codigo</span>, <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span>, <span class="pl-c1">SUM</span>(<span class="pl-c1">Desp</span>.<span class="pl-c1">valor</span>) <span class="pl-k">AS</span> gasto <span class="pl-k">FROM</span> despesa Desp, natureza N, (</td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">SELECT</span> <span class="pl-c1">M</span>.<span class="pl-c1">codigo</span> <span class="pl-k">FROM</span> CodMunicipio M <span class="pl-k">WHERE</span> <span class="pl-c1">M</span>.<span class="pl-c1">descricao</span> <span class="pl-k">=</span> cidade)Mun <span class="pl-c">--usando a view</span></td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">WHERE</span> <span class="pl-c1">Mun</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">Desp</span>.<span class="pl-c1">codigomunicipio</span> <span class="pl-k">AND</span> <span class="pl-c1">N</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">Desp</span>.<span class="pl-c1">codigonatureza</span></td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">GROUP BY</span> <span class="pl-c1">N</span>.<span class="pl-c1">codigo</span>, <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span> <span class="pl-k">ORDER BY</span> gasto <span class="pl-k">DESC</span>;</td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">	ELSE <span class="pl-c">-- RETORNA A AGREGAÇÃO PARA UMA NATUREZA ESPECÍFICA</span></td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line">		RETURN QUERY</td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">SELECT</span>  <span class="pl-c1">N</span>.<span class="pl-c1">codigo</span>, <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span>, <span class="pl-c1">SUM</span>(<span class="pl-c1">Desp</span>.<span class="pl-c1">valor</span>) <span class="pl-k">AS</span> gasto <span class="pl-k">FROM</span> despesa Desp,</td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line">				(<span class="pl-k">SELECT</span> <span class="pl-k">*</span> <span class="pl-k">FROM</span> naturezaView Nat <span class="pl-k">WHERE</span> <span class="pl-c1">Nat</span>.<span class="pl-c1">descricao</span> ILIKE natDesc )N,  <span class="pl-c">--usando view</span></td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line">				(<span class="pl-k">SELECT</span> <span class="pl-c1">M</span>.<span class="pl-c1">codigo</span> <span class="pl-k">FROM</span> CodMunicipio M <span class="pl-k">WHERE</span> <span class="pl-c1">M</span>.<span class="pl-c1">descricao</span> <span class="pl-k">=</span> cidade)Mun <span class="pl-c">--usando a view</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">WHERE</span> <span class="pl-c1">Mun</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">Desp</span>.<span class="pl-c1">codigomunicipio</span> <span class="pl-k">AND</span> <span class="pl-c1">N</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">Desp</span>.<span class="pl-c1">codigonatureza</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">GROUP BY</span> <span class="pl-c1">N</span>.<span class="pl-c1">codigo</span>, <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span> <span class="pl-k">ORDER BY</span> gasto <span class="pl-k">DESC</span>;</td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line">	END IF;</td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line">	<span class="pl-k">INSERT INTO</span> HISTORICO <span class="pl-k">VALUES</span>(<span class="pl-c1">1</span>,tipo_consulta);</td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line">END;</td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line">$$ LANGUAGE plpgsql;</td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--------------------------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE OR REPLACE</span> <span class="pl-k">FUNCTION</span> <span class="pl-en">CONSULTA_SIMPLES_PROGRAMA</span>(<span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>), <span class="pl-k">VARCHAR</span> (<span class="pl-c1">100</span>), <span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>))</td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line">RETURNS TABLE(cod <span class="pl-k">INTEGER</span>, descricao <span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>), gasto <span class="pl-k">NUMERIC</span>) <span class="pl-k">AS</span> $$</td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line">DECLARE progDesc ALIAS FOR $<span class="pl-c1">1</span>;</td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line">cidade ALIAS FOR $<span class="pl-c1">2</span>;</td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line">tipo_consulta ALIAS FOR $<span class="pl-c1">3</span>;</td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line"><span class="pl-k">BEGIN</span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line">	IF cidade IS <span class="pl-k">NULL</span> THEN</td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line">		cidade :<span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&#39;</span>Campinas<span class="pl-pds">&#39;</span></span>;</td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code blob-code-inner js-file-line">	END IF;</td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code blob-code-inner js-file-line">	IF progDesc IS <span class="pl-k">NULL</span> THEN <span class="pl-c">--RETORNA A AGREGAÇÃO PARA TODAS OS PROGRAMAS</span></td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code blob-code-inner js-file-line">		RETURN QUERY</td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">SELECT</span>  <span class="pl-c1">P</span>.<span class="pl-c1">codigo</span>, <span class="pl-c1">P</span>.<span class="pl-c1">descricaointernamunicipio</span>, <span class="pl-c1">SUM</span>(<span class="pl-c1">Desp</span>.<span class="pl-c1">valor</span>) <span class="pl-k">AS</span> gasto <span class="pl-k">FROM</span> despesa Desp, programa P, (</td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">SELECT</span> <span class="pl-c1">M</span>.<span class="pl-c1">codigo</span> <span class="pl-k">FROM</span> CodMunicipio M <span class="pl-k">WHERE</span> <span class="pl-c1">M</span>.<span class="pl-c1">descricao</span> <span class="pl-k">=</span> cidade)Mun  <span class="pl-c">--usando view</span></td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">WHERE</span> <span class="pl-c1">Mun</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">Desp</span>.<span class="pl-c1">codigomunicipio</span> <span class="pl-k">AND</span> <span class="pl-c1">P</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">Desp</span>.<span class="pl-c1">codigoprograma</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">GROUP BY</span> <span class="pl-c1">P</span>.<span class="pl-c1">codigo</span>, <span class="pl-c1">P</span>.<span class="pl-c1">descricaointernamunicipio</span> <span class="pl-k">ORDER BY</span> gasto <span class="pl-k">DESC</span>;</td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code blob-code-inner js-file-line">	ELSE <span class="pl-c">-- RETORNA A AGREGAÇÃO PARA UM PROGRAMA ESPECÍFICA</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code blob-code-inner js-file-line">		RETURN QUERY</td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">SELECT</span>  <span class="pl-c1">P</span>.<span class="pl-c1">codigo</span>, <span class="pl-c1">P</span>.<span class="pl-c1">descricao</span>, <span class="pl-c1">SUM</span>(<span class="pl-c1">Desp</span>.<span class="pl-c1">valor</span>) <span class="pl-k">AS</span> gasto <span class="pl-k">FROM</span> despesa Desp,</td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code blob-code-inner js-file-line">				(<span class="pl-k">SELECT</span> <span class="pl-k">*</span> <span class="pl-k">FROM</span> ProgramaView Prog <span class="pl-k">WHERE</span> <span class="pl-c1">Prog</span>.<span class="pl-c1">descricao</span> ILIKE progDesc)P, <span class="pl-c">--usando view</span></td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code blob-code-inner js-file-line">				(<span class="pl-k">SELECT</span> <span class="pl-c1">M</span>.<span class="pl-c1">codigo</span> <span class="pl-k">FROM</span> CodMunicipio M <span class="pl-k">WHERE</span> <span class="pl-c1">M</span>.<span class="pl-c1">descricao</span> <span class="pl-k">=</span> cidade)Mun <span class="pl-c">--usando view</span></td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">WHERE</span> <span class="pl-c1">Mun</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">Desp</span>.<span class="pl-c1">codigomunicipio</span> <span class="pl-k">AND</span> <span class="pl-c1">P</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">Desp</span>.<span class="pl-c1">codigoprograma</span></td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">GROUP BY</span> <span class="pl-c1">P</span>.<span class="pl-c1">codigo</span>, <span class="pl-c1">P</span>.<span class="pl-c1">descricao</span> <span class="pl-k">ORDER BY</span> gasto <span class="pl-k">DESC</span>;</td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code blob-code-inner js-file-line">	END IF;</td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code blob-code-inner js-file-line">	<span class="pl-k">INSERT INTO</span> HISTORICO <span class="pl-k">VALUES</span>(<span class="pl-c1">1</span>,tipo_consulta);</td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code blob-code-inner js-file-line">END;</td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code blob-code-inner js-file-line">$$ LANGUAGE plpgsql;</td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-----------------------------------------------------------------------------------------------------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--STORE PROCEDURE CONSULTA AVANÇADA</span></td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE OR REPLACE</span> <span class="pl-k">FUNCTION</span> <span class="pl-en">CONSULTA_AVANCADA</span>(<span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>), <span class="pl-k">VARCHAR</span> (<span class="pl-c1">100</span>), <span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>), <span class="pl-k">INTEGER</span>, <span class="pl-k">INTEGER</span>, <span class="pl-k">REAL</span>, <span class="pl-k">REAL</span>, <span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>))</td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code blob-code-inner js-file-line">RETURNS TABLE(descricaoPrograma <span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>), descricaoNatureza <span class="pl-k">VARCHAR</span>(<span class="pl-c1">100</span>), gasto <span class="pl-k">NUMERIC</span>) <span class="pl-k">AS</span> $$</td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code blob-code-inner js-file-line">DECLARE natureza1 ALIAS FOR $<span class="pl-c1">1</span>;</td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code blob-code-inner js-file-line">natureza2 ALIAS FOR $<span class="pl-c1">2</span>;</td>
      </tr>
      <tr>
        <td id="L141" class="blob-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-code blob-code-inner js-file-line">cidade ALIAS FOR $<span class="pl-c1">3</span>;</td>
      </tr>
      <tr>
        <td id="L142" class="blob-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-code blob-code-inner js-file-line">anoInic ALIAS FOR $<span class="pl-c1">4</span>;</td>
      </tr>
      <tr>
        <td id="L143" class="blob-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-code blob-code-inner js-file-line">anoFinal ALIAS FOR $<span class="pl-c1">5</span>;</td>
      </tr>
      <tr>
        <td id="L144" class="blob-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-code blob-code-inner js-file-line">limiteInferior ALIAS FOR $<span class="pl-c1">6</span>;</td>
      </tr>
      <tr>
        <td id="L145" class="blob-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-code blob-code-inner js-file-line">limiteSuperior ALIAS FOR $<span class="pl-c1">7</span>;</td>
      </tr>
      <tr>
        <td id="L146" class="blob-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-code blob-code-inner js-file-line">tipo_consulta ALIAS FOR $<span class="pl-c1">8</span>;</td>
      </tr>
      <tr>
        <td id="L147" class="blob-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L148" class="blob-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-code blob-code-inner js-file-line"><span class="pl-k">BEGIN</span></td>
      </tr>
      <tr>
        <td id="L149" class="blob-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-code blob-code-inner js-file-line">	IF anoInic IS <span class="pl-k">NULL</span> THEN</td>
      </tr>
      <tr>
        <td id="L150" class="blob-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-code blob-code-inner js-file-line">		<span class="pl-k">SELECT</span>  dataano INTO anoInic <span class="pl-k">FROM</span> despesa <span class="pl-k">ORDER BY</span> dataano <span class="pl-k">ASC</span> <span class="pl-k">LIMIT</span> <span class="pl-c1">1</span>;</td>
      </tr>
      <tr>
        <td id="L151" class="blob-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-code blob-code-inner js-file-line">	END IF;</td>
      </tr>
      <tr>
        <td id="L152" class="blob-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L153" class="blob-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-code blob-code-inner js-file-line">	IF anoFinal IS <span class="pl-k">NULL</span> THEN</td>
      </tr>
      <tr>
        <td id="L154" class="blob-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-code blob-code-inner js-file-line">		<span class="pl-k">SELECT</span>  dataano INTO anoFinal <span class="pl-k">FROM</span> despesa <span class="pl-k">ORDER BY</span> dataano <span class="pl-k">DESC</span> <span class="pl-k">LIMIT</span> <span class="pl-c1">1</span>;</td>
      </tr>
      <tr>
        <td id="L155" class="blob-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-code blob-code-inner js-file-line">	END IF;</td>
      </tr>
      <tr>
        <td id="L156" class="blob-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L157" class="blob-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-code blob-code-inner js-file-line">	IF limiteInferior IS <span class="pl-k">NULL</span> THEN</td>
      </tr>
      <tr>
        <td id="L158" class="blob-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-code blob-code-inner js-file-line">		limiteInferior :<span class="pl-k">=</span> <span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L159" class="blob-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-code blob-code-inner js-file-line">	END IF;</td>
      </tr>
      <tr>
        <td id="L160" class="blob-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L161" class="blob-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-code blob-code-inner js-file-line">	IF cidade IS <span class="pl-k">NULL</span> THEN</td>
      </tr>
      <tr>
        <td id="L162" class="blob-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-code blob-code-inner js-file-line">		cidade :<span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&#39;</span>Campinas<span class="pl-pds">&#39;</span></span>;</td>
      </tr>
      <tr>
        <td id="L163" class="blob-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L164" class="blob-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-code blob-code-inner js-file-line">	END IF;</td>
      </tr>
      <tr>
        <td id="L165" class="blob-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L166" class="blob-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L167" class="blob-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-code blob-code-inner js-file-line">	IF natureza2 IS <span class="pl-k">NULL</span> <span class="pl-k">AND</span> limiteSuperior IS <span class="pl-k">NULL</span> THEN</td>
      </tr>
      <tr>
        <td id="L168" class="blob-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-code blob-code-inner js-file-line">		RETURN QUERY</td>
      </tr>
      <tr>
        <td id="L169" class="blob-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">SELECT</span> <span class="pl-c1">P</span>.<span class="pl-c1">descricaointernamunicipio</span> , <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span> , <span class="pl-c1">SUM</span>(<span class="pl-c1">D</span>.<span class="pl-c1">valor</span>) <span class="pl-k">AS</span> gasto <span class="pl-k">FROM</span> despesa D, programa P, (</td>
      </tr>
      <tr>
        <td id="L170" class="blob-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">SELECT</span> <span class="pl-k">*</span> <span class="pl-k">FROM</span> naturezaView Nat <span class="pl-k">WHERE</span> <span class="pl-c1">Nat</span>.<span class="pl-c1">descricao</span> ILIKE natureza1) N,( <span class="pl-c">--usando view</span></td>
      </tr>
      <tr>
        <td id="L171" class="blob-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">SELECT</span> <span class="pl-c1">M</span>.<span class="pl-c1">codigo</span> <span class="pl-k">FROM</span> CodMunicipio M <span class="pl-k">WHERE</span> <span class="pl-c1">M</span>.<span class="pl-c1">descricao</span> <span class="pl-k">=</span> cidade)Mun <span class="pl-c">--usando view</span></td>
      </tr>
      <tr>
        <td id="L172" class="blob-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">WHERE</span> <span class="pl-c1">Mun</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigomunicipio</span> <span class="pl-k">AND</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigoprograma</span> <span class="pl-k">=</span> <span class="pl-c1">P</span>.<span class="pl-c1">codigo</span> <span class="pl-k">AND</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigonatureza</span> <span class="pl-k">=</span> <span class="pl-c1">N</span>.<span class="pl-c1">codigo</span> <span class="pl-k">AND</span></td>
      </tr>
      <tr>
        <td id="L173" class="blob-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-code blob-code-inner js-file-line">			(dataano <span class="pl-k">&gt;=</span> anoInic <span class="pl-k">and</span> dataano <span class="pl-k">&lt;=</span> anoFinal)</td>
      </tr>
      <tr>
        <td id="L174" class="blob-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">GROUP BY</span> <span class="pl-c1">P</span>.<span class="pl-c1">descricaointernamunicipio</span> , <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span></td>
      </tr>
      <tr>
        <td id="L175" class="blob-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">HAVING</span> <span class="pl-c1">SUM</span>(<span class="pl-c1">D</span>.<span class="pl-c1">valor</span>) <span class="pl-k">&gt;</span> limiteInferior</td>
      </tr>
      <tr>
        <td id="L176" class="blob-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">ORDER BY</span> gasto <span class="pl-k">DESC</span>;</td>
      </tr>
      <tr>
        <td id="L177" class="blob-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L178" class="blob-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-code blob-code-inner js-file-line">	ELSIF natureza2 IS <span class="pl-k">NULL</span> <span class="pl-k">AND</span> limiteSuperior <span class="pl-k">IS NOT NULL</span> THEN</td>
      </tr>
      <tr>
        <td id="L179" class="blob-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-code blob-code-inner js-file-line">		RETURN QUERY</td>
      </tr>
      <tr>
        <td id="L180" class="blob-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">SELECT</span> <span class="pl-c1">P</span>.<span class="pl-c1">descricaointernamunicipio</span> , <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span> , <span class="pl-c1">SUM</span>(<span class="pl-c1">D</span>.<span class="pl-c1">valor</span>) <span class="pl-k">AS</span> gasto <span class="pl-k">FROM</span> despesa D, programa P, (</td>
      </tr>
      <tr>
        <td id="L181" class="blob-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">SELECT</span> <span class="pl-k">*</span> <span class="pl-k">FROM</span> naturezaView Nat <span class="pl-k">WHERE</span> <span class="pl-c1">Nat</span>.<span class="pl-c1">descricao</span> ILIKE natureza1) N,( <span class="pl-c">--usando view</span></td>
      </tr>
      <tr>
        <td id="L182" class="blob-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">SELECT</span> <span class="pl-c1">M</span>.<span class="pl-c1">codigo</span> <span class="pl-k">FROM</span> CodMunicipio M <span class="pl-k">WHERE</span> <span class="pl-c1">M</span>.<span class="pl-c1">descricao</span> <span class="pl-k">=</span> cidade)Mun <span class="pl-c">--usando view</span></td>
      </tr>
      <tr>
        <td id="L183" class="blob-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">WHERE</span> <span class="pl-c1">Mun</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigomunicipio</span> <span class="pl-k">AND</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigoprograma</span> <span class="pl-k">=</span> <span class="pl-c1">P</span>.<span class="pl-c1">codigo</span> <span class="pl-k">AND</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigonatureza</span> <span class="pl-k">=</span> <span class="pl-c1">N</span>.<span class="pl-c1">codigo</span> <span class="pl-k">AND</span></td>
      </tr>
      <tr>
        <td id="L184" class="blob-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-code blob-code-inner js-file-line">				(dataano <span class="pl-k">&gt;=</span> anoInic <span class="pl-k">and</span> dataano <span class="pl-k">&lt;=</span> anoFinal)</td>
      </tr>
      <tr>
        <td id="L185" class="blob-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">GROUP BY</span> <span class="pl-c1">P</span>.<span class="pl-c1">descricaointernamunicipio</span> , <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span></td>
      </tr>
      <tr>
        <td id="L186" class="blob-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">HAVING</span> <span class="pl-c1">SUM</span>(<span class="pl-c1">D</span>.<span class="pl-c1">valor</span>) <span class="pl-k">&gt;</span> limiteInferior <span class="pl-k">AND</span> <span class="pl-c1">SUM</span>(<span class="pl-c1">D</span>.<span class="pl-c1">valor</span>) <span class="pl-k">&lt;</span> limiteSuperior</td>
      </tr>
      <tr>
        <td id="L187" class="blob-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">ORDER BY</span> gasto <span class="pl-k">DESC</span>;</td>
      </tr>
      <tr>
        <td id="L188" class="blob-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L189" class="blob-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-code blob-code-inner js-file-line">	ELSIF natureza2 <span class="pl-k">IS NOT NULL</span> <span class="pl-k">AND</span> limiteSuperior IS <span class="pl-k">NULL</span> THEN</td>
      </tr>
      <tr>
        <td id="L190" class="blob-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-code blob-code-inner js-file-line">		RETURN QUERY</td>
      </tr>
      <tr>
        <td id="L191" class="blob-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L192" class="blob-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">SELECT</span> <span class="pl-c1">P</span>.<span class="pl-c1">descricaointernamunicipio</span> , <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span> , <span class="pl-c1">SUM</span>(<span class="pl-c1">D</span>.<span class="pl-c1">valor</span>) <span class="pl-k">AS</span> gasto <span class="pl-k">FROM</span> despesa D, programa P, (</td>
      </tr>
      <tr>
        <td id="L193" class="blob-num js-line-number" data-line-number="193"></td>
        <td id="LC193" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">SELECT</span> <span class="pl-k">*</span> <span class="pl-k">FROM</span> naturezaView Nat <span class="pl-k">WHERE</span> <span class="pl-c1">Nat</span>.<span class="pl-c1">descricao</span> ILIKE natureza1 <span class="pl-k">UNION</span> <span class="pl-c">--view</span></td>
      </tr>
      <tr>
        <td id="L194" class="blob-num js-line-number" data-line-number="194"></td>
        <td id="LC194" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">SELECT</span> <span class="pl-k">*</span> <span class="pl-k">FROM</span> naturezaView Nat <span class="pl-k">WHERE</span> <span class="pl-c1">Nat</span>.<span class="pl-c1">descricao</span> ILIKE natureza2) N,( <span class="pl-c">--view</span></td>
      </tr>
      <tr>
        <td id="L195" class="blob-num js-line-number" data-line-number="195"></td>
        <td id="LC195" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">SELECT</span> <span class="pl-c1">M</span>.<span class="pl-c1">codigo</span> <span class="pl-k">FROM</span> CodMunicipio M <span class="pl-k">WHERE</span> <span class="pl-c1">M</span>.<span class="pl-c1">descricao</span> <span class="pl-k">=</span> cidade)Mun <span class="pl-c">--view</span></td>
      </tr>
      <tr>
        <td id="L196" class="blob-num js-line-number" data-line-number="196"></td>
        <td id="LC196" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">WHERE</span> <span class="pl-c1">Mun</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigomunicipio</span> <span class="pl-k">AND</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigoprograma</span> <span class="pl-k">=</span> <span class="pl-c1">P</span>.<span class="pl-c1">codigo</span> <span class="pl-k">AND</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigonatureza</span> <span class="pl-k">=</span> <span class="pl-c1">N</span>.<span class="pl-c1">codigo</span> <span class="pl-k">AND</span></td>
      </tr>
      <tr>
        <td id="L197" class="blob-num js-line-number" data-line-number="197"></td>
        <td id="LC197" class="blob-code blob-code-inner js-file-line">				(dataano <span class="pl-k">&gt;=</span> anoInic <span class="pl-k">and</span> dataano <span class="pl-k">&lt;=</span> anoFinal)</td>
      </tr>
      <tr>
        <td id="L198" class="blob-num js-line-number" data-line-number="198"></td>
        <td id="LC198" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">GROUP BY</span> <span class="pl-c1">P</span>.<span class="pl-c1">descricaointernamunicipio</span> , <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span></td>
      </tr>
      <tr>
        <td id="L199" class="blob-num js-line-number" data-line-number="199"></td>
        <td id="LC199" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">HAVING</span> <span class="pl-c1">SUM</span>(<span class="pl-c1">D</span>.<span class="pl-c1">valor</span>) <span class="pl-k">&gt;</span> limiteInferior</td>
      </tr>
      <tr>
        <td id="L200" class="blob-num js-line-number" data-line-number="200"></td>
        <td id="LC200" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">ORDER BY</span> gasto <span class="pl-k">DESC</span>;</td>
      </tr>
      <tr>
        <td id="L201" class="blob-num js-line-number" data-line-number="201"></td>
        <td id="LC201" class="blob-code blob-code-inner js-file-line">	ELSE</td>
      </tr>
      <tr>
        <td id="L202" class="blob-num js-line-number" data-line-number="202"></td>
        <td id="LC202" class="blob-code blob-code-inner js-file-line">		RETURN QUERY</td>
      </tr>
      <tr>
        <td id="L203" class="blob-num js-line-number" data-line-number="203"></td>
        <td id="LC203" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L204" class="blob-num js-line-number" data-line-number="204"></td>
        <td id="LC204" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">SELECT</span> <span class="pl-c1">P</span>.<span class="pl-c1">descricaointernamunicipio</span> , <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span> , <span class="pl-c1">SUM</span>(<span class="pl-c1">D</span>.<span class="pl-c1">valor</span>) <span class="pl-k">AS</span> gasto <span class="pl-k">FROM</span> despesa D, programa P, (</td>
      </tr>
      <tr>
        <td id="L205" class="blob-num js-line-number" data-line-number="205"></td>
        <td id="LC205" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">SELECT</span> <span class="pl-k">*</span> <span class="pl-k">FROM</span> naturezaView Nat <span class="pl-k">WHERE</span> <span class="pl-c1">Nat</span>.<span class="pl-c1">descricao</span> ILIKE natureza1 <span class="pl-k">UNION</span> <span class="pl-c">--view</span></td>
      </tr>
      <tr>
        <td id="L206" class="blob-num js-line-number" data-line-number="206"></td>
        <td id="LC206" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">SELECT</span> <span class="pl-k">*</span> <span class="pl-k">FROM</span> naturezaView Nat <span class="pl-k">WHERE</span> <span class="pl-c1">Nat</span>.<span class="pl-c1">descricao</span> ILIKE natureza2) N,( <span class="pl-c">--view</span></td>
      </tr>
      <tr>
        <td id="L207" class="blob-num js-line-number" data-line-number="207"></td>
        <td id="LC207" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">SELECT</span> <span class="pl-c1">M</span>.<span class="pl-c1">codigo</span> <span class="pl-k">FROM</span> CodMunicipio M <span class="pl-k">WHERE</span> <span class="pl-c1">M</span>.<span class="pl-c1">descricao</span> <span class="pl-k">=</span> cidade)Mun <span class="pl-c">--view</span></td>
      </tr>
      <tr>
        <td id="L208" class="blob-num js-line-number" data-line-number="208"></td>
        <td id="LC208" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">WHERE</span> <span class="pl-c1">Mun</span>.<span class="pl-c1">codigo</span> <span class="pl-k">=</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigomunicipio</span> <span class="pl-k">AND</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigoprograma</span> <span class="pl-k">=</span> <span class="pl-c1">P</span>.<span class="pl-c1">codigo</span> <span class="pl-k">AND</span> <span class="pl-c1">D</span>.<span class="pl-c1">codigonatureza</span> <span class="pl-k">=</span> <span class="pl-c1">N</span>.<span class="pl-c1">codigo</span> <span class="pl-k">AND</span></td>
      </tr>
      <tr>
        <td id="L209" class="blob-num js-line-number" data-line-number="209"></td>
        <td id="LC209" class="blob-code blob-code-inner js-file-line">				(dataano <span class="pl-k">&gt;=</span> anoInic <span class="pl-k">and</span> dataano <span class="pl-k">&lt;=</span> anoFinal)</td>
      </tr>
      <tr>
        <td id="L210" class="blob-num js-line-number" data-line-number="210"></td>
        <td id="LC210" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">GROUP BY</span> <span class="pl-c1">P</span>.<span class="pl-c1">descricaointernamunicipio</span> , <span class="pl-c1">N</span>.<span class="pl-c1">descricao</span></td>
      </tr>
      <tr>
        <td id="L211" class="blob-num js-line-number" data-line-number="211"></td>
        <td id="LC211" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">HAVING</span> <span class="pl-c1">SUM</span>(<span class="pl-c1">D</span>.<span class="pl-c1">valor</span>) <span class="pl-k">&gt;</span> limiteInferior <span class="pl-k">AND</span> <span class="pl-c1">SUM</span>(<span class="pl-c1">D</span>.<span class="pl-c1">valor</span>) <span class="pl-k">&lt;</span> limiteSuperior</td>
      </tr>
      <tr>
        <td id="L212" class="blob-num js-line-number" data-line-number="212"></td>
        <td id="LC212" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">ORDER BY</span> gasto <span class="pl-k">DESC</span>;</td>
      </tr>
      <tr>
        <td id="L213" class="blob-num js-line-number" data-line-number="213"></td>
        <td id="LC213" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L214" class="blob-num js-line-number" data-line-number="214"></td>
        <td id="LC214" class="blob-code blob-code-inner js-file-line">	END IF;</td>
      </tr>
      <tr>
        <td id="L215" class="blob-num js-line-number" data-line-number="215"></td>
        <td id="LC215" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L216" class="blob-num js-line-number" data-line-number="216"></td>
        <td id="LC216" class="blob-code blob-code-inner js-file-line">	<span class="pl-k">INSERT INTO</span> HISTORICO <span class="pl-k">VALUES</span>(<span class="pl-c1">1</span>,tipo_consulta);</td>
      </tr>
      <tr>
        <td id="L217" class="blob-num js-line-number" data-line-number="217"></td>
        <td id="LC217" class="blob-code blob-code-inner js-file-line">	</td>
      </tr>
      <tr>
        <td id="L218" class="blob-num js-line-number" data-line-number="218"></td>
        <td id="LC218" class="blob-code blob-code-inner js-file-line">END;</td>
      </tr>
      <tr>
        <td id="L219" class="blob-num js-line-number" data-line-number="219"></td>
        <td id="LC219" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L220" class="blob-num js-line-number" data-line-number="220"></td>
        <td id="LC220" class="blob-code blob-code-inner js-file-line">$$ LANGUAGE plpgsql;</td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.05809s from github-fe133-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-447ce66a36506ebddc8e84b4e32a77f6062f3d3482e77dd21a77a01f0643ad98.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github/index-a5f1d0adc0be764520503e28eb75f4f8ede92312238a209f2531bd3a79b28cb7.js"></script>
      
      
  </body>
</html>

