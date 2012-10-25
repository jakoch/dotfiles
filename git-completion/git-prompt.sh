  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>git/contrib/completion/git-prompt.sh at master · git/git</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144.png" />

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="c/f0ZkgoCN0sXAW5nbF+GMeXLIzqhHPAa9hwY5SDMdM=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-a4149b5a83dd443b416bc3f8f7d3487f943ae92a.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-bba4ff2e37d3e3dd695a12c88cc5bda8fb5a69be.css" media="screen" rel="stylesheet" type="text/css" />
    


    <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-974473a941a983b46f11833dc8ffba8414698ff7.js" type="text/javascript"></script>
    <script src="https://a248.e.akamai.net/assets.github.com/assets/github-6c7d759d3c263d4ee982c70fa09635ffecf572dd.js" type="text/javascript"></script>
    

      <link rel='permalink' href='/git/git/blob/8c7a786b6c8eae8eac91083cdc9a6e337bc133b0/contrib/completion/git-prompt.sh'>
    <meta property="og:title" content="git"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/git/git"/>
    <meta property="og:image" content="https://a248.e.akamai.net/assets.github.com/images/gravatars/gravatar-user-420.png?1345673561"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="git - Git Source Code Mirror - This is a publish-only repository and all pull requests are ignored. Please follow Documentation/SubmittingPatches procedure for any of your improvements."/>

    <meta name="description" content="git - Git Source Code Mirror - This is a publish-only repository and all pull requests are ignored. Please follow Documentation/SubmittingPatches procedure for any of your improvements." />
  <link href="https://github.com/git/git/commits/master.atom" rel="alternate" title="Recent Commits to git:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob windows vis-public env-production ">
    <div id="wrapper">

    
    

    

      <div id="header" class="true clearfix">
        <div class="container clearfix">
          <a class="site-logo " href="https://github.com/">
            <img alt="GitHub" class="github-logo-4x" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x.png?1340659561" />
            <img alt="GitHub" class="github-logo-4x-hover" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x-hover.png?1340659561" />
          </a>

            <a href="/notifications" class="notification-indicator tooltipped downwards" title="You have no unread notifications">
              <span class="mail-status all-read"></span>
            </a>

              
    <div class="topsearch command-bar-activated">
      <form accept-charset="UTF-8" action="/search" class="command_bar_form" id="top_search_form" method="get">
  <a href="/search" class="advanced-search tooltipped downwards command-bar-search" id="advanced_search" title="Advanced Search"><span class="mini-icon mini-icon-advanced-search "></span></a>
  <input type="text" name="q" id="command-bar" placeholder="Search or Type a Command" tabindex="1" />
  <span class="mini-icon help tooltipped downwards" title="Show Command Bar Help"></span>
  <input type="hidden" name="type" value="Everything" />
  <input type="hidden" name="repo" value="" />
  <input type="hidden" name="langOverride" value="" />
  <input type="hidden" name="start_value" value="1" />
</form>

      <ul class="top-nav">
          <li class="explore"><a href="https://github.com/explore">Explore</a></li>
          <li><a href="https://gist.github.com">Gist</a></li>
          <li><a href="/blog">Blog</a></li>
        <li><a href="http://help.github.com">Help</a></li>
      </ul>
    </div>


            

  
  <div id="userbox">
    <div id="user">
      <a href="https://github.com/jakoch"><img height="20" src="https://secure.gravatar.com/avatar/276d28076b0fbe3facf0e0f481f06b69?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
      <a href="https://github.com/jakoch" class="name">jakoch</a>
    </div>
    <ul id="user-links">
      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a New Repo"><span class="mini-icon mini-icon-create"></span></a>
      </li>
      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          title="Account Settings ">
          <span class="mini-icon mini-icon-account-settings"></span>
        </a>
      </li>
      <li>
          <a href="/logout" data-method="post" id="logout" class="tooltipped downwards" title="Sign Out">
            <span class="mini-icon mini-icon-logout"></span>
          </a>
      </li>
    </ul>
  </div>



          
        </div>
      </div>

      

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu">
          <div class="container">
            <div class="title-actions-bar">
              


                  <ul class="pagehead-actions">

          <li class="subscription">
              <form accept-charset="UTF-8" action="/notifications/subscribe" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="c/f0ZkgoCN0sXAW5nbF+GMeXLIzqhHPAa9hwY5SDMdM=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="36502" />
  <div class="context-menu-container js-menu-container js-context-menu">
    <span class="minibutton switcher bigger js-menu-target">
      <span class="js-context-button">
          <span class="mini-icon mini-icon-watching"></span>Watch
      </span>
    </span>

    <div class="context-pane js-menu-content">
      <a href="javascript:;" class="close js-menu-close"><span class="mini-icon mini-icon-remove-close"></span></a>
      <div class="context-title">Notification status</div>

      <div class="context-body pane-selector">
        <ul class="js-navigation-container">
          <li class="selector-item js-navigation-item js-navigation-target selected">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input checked="checked" id="do_included" name="do" type="radio" value="included" />
              <h4>Not watching</h4>
              <p>You will only receive notifications when you participate or are mentioned.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-watching"></span>
              Watch
            </span>
          </li>
          <li class="selector-item js-navigation-item js-navigation-target ">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input id="do_subscribed" name="do" type="radio" value="subscribed" />
              <h4>Watching</h4>
              <p>You will receive all notifications for this repository.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-unwatch"></span>
              Unwatch
            </span>
          </li>
          <li class="selector-item js-navigation-item js-navigation-target ">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input id="do_ignore" name="do" type="radio" value="ignore" />
              <h4>Ignored</h4>
              <p>You will not receive notifications for this repository.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-mute"></span>
              Stop ignoring
            </span>
          </li>
        </ul>
      </div>
    </div>
  </div>
</form>
          </li>

          <li class="js-toggler-container js-social-container starring-container ">
            <a href="/git/git/unstar" class="minibutton js-toggler-target starred" data-remote="true" data-method="post" rel="nofollow">
              <span class="mini-icon mini-icon-star"></span>Unstar
            </a><a href="/git/git/star" class="minibutton js-toggler-target unstarred" data-remote="true" data-method="post" rel="nofollow">
              <span class="mini-icon mini-icon-star"></span>Star
            </a><a class="social-count js-social-count" href="/git/git/stargazers">3,092</a>
          </li>

              <li>
                <a href="/git/git/fork_select" class="minibutton js-toggler-target lighter" rel="facebox nofollow"><span class="mini-icon mini-icon-fork"></span>Fork</a><a href="/git/git/network" class="social-count">886</a>
              </li>


    </ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-icon mega-icon-public-repo"></span>
                <span class="author vcard">
                  <a href="/git" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">git</span>
                  </a></span> /
                <strong><a href="/git/git" class="js-current-repository">git</a></strong>
              </h1>
            </div>

            

  <ul class="tabs">
    <li><a href="/git/git" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/git/git/network" highlight="repo_network">Network</a></li>
    <li><a href="/git/git/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>0</span></a></li>




    <li><a href="/git/git/graphs" highlight="repo_graphsrepo_contributors">Graphs</a></li>


  </ul>
  
  <div class="frame frame-center tree-finder" style="display:none"
      data-tree-list-url="/git/git/tree-list/8c7a786b6c8eae8eac91083cdc9a6e337bc133b0"
      data-blob-url-prefix="/git/git/blob/master">

  <div class="breadcrumb">
    <span class="bold"><a href="/git/git">git</a></span> /
    <input class="tree-finder-input js-navigation-enable" type="text" name="query" autocomplete="off" spellcheck="false">
  </div>

    <div class="octotip">
      <p>
        <a href="/git/git/dismiss-tree-finder-help" class="dismiss js-dismiss-tree-list-help" title="Hide this notice forever" rel="nofollow">Dismiss</a>
        <span class="bold">Octotip:</span> You've activated the <em>file finder</em>
        by pressing <span class="kbd">t</span> Start typing to filter the
        file list. Use <span class="kbd badmono">↑</span> and
        <span class="kbd badmono">↓</span> to navigate,
        <span class="kbd">enter</span> to view files.
      </p>
    </div>

  <table class="tree-browser css-truncate" cellpadding="0" cellspacing="0">
    <tr class="js-no-results no-results" style="display: none">
      <th colspan="2">No matching files</th>
    </tr>
    <tbody class="js-results-list js-navigation-container">
    </tbody>
  </table>
</div>

<div id="jump-to-line" style="display:none">
  <h2>Jump to Line</h2>
  <form accept-charset="UTF-8">
    <input class="textfield" type="text">
    <div class="full-button">
      <button type="submit" class="classy">
        Go
      </button>
    </div>
  </form>
</div>


<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
      <li><a href="/git/git/tags" class="tabnav-tab" highlight="repo_tags">Tags <span class="counter ">436</span></a></li>
      <li><a href="/git/git/downloads" class="tabnav-tab" highlight="repo_downloads">Downloads <span class="counter blank">0</span></a></li>
    </ul>
    
  </span>

  <div class="tabnav-widget scope">


    <div class="context-menu-container js-menu-container js-context-menu">
      <a href="#"
         class="minibutton bigger switcher js-menu-target js-commitish-button btn-branch repo-tree"
         data-hotkey="w"
         data-ref="master">
         <span><em class="mini-icon mini-icon-branch"></em><i>branch:</i> master</span>
      </a>

      <div class="context-pane commitish-context js-menu-content">
        <a href="javascript:;" class="close js-menu-close"><span class="mini-icon mini-icon-remove-close"></span></a>
        <div class="context-title">Switch branches/tags</div>
        <div class="context-body pane-selector commitish-selector js-navigation-container">
          <div class="filterbar">
            <input type="text" id="context-commitish-filter-field" class="js-navigation-enable" placeholder="Filter branches/tags" data-filterable />
            <ul class="tabs">
              <li><a href="#" data-filter="branches" class="selected">Branches</a></li>
                <li><a href="#" data-filter="tags">Tags</a></li>
            </ul>
          </div>

          <div class="js-filter-tab js-filter-branches" data-filterable-for="context-commitish-filter-field" data-filterable-type=substring>
            <div class="no-results js-not-filterable">Nothing to show</div>
              <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target ">
                <span class="mini-icon mini-icon-confirm"></span>
                <h4>
                    <a href="/git/git/blob/maint/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="maint" rel="nofollow">maint</a>
                </h4>
              </div>
              <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target selected">
                <span class="mini-icon mini-icon-confirm"></span>
                <h4>
                    <a href="/git/git/blob/master/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="master" rel="nofollow">master</a>
                </h4>
              </div>
              <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target ">
                <span class="mini-icon mini-icon-confirm"></span>
                <h4>
                    <a href="/git/git/blob/next/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="next" rel="nofollow">next</a>
                </h4>
              </div>
              <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target ">
                <span class="mini-icon mini-icon-confirm"></span>
                <h4>
                    <a href="/git/git/blob/pu/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="pu" rel="nofollow">pu</a>
                </h4>
              </div>
              <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target ">
                <span class="mini-icon mini-icon-confirm"></span>
                <h4>
                    <a href="/git/git/blob/todo/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="todo" rel="nofollow">todo</a>
                </h4>
              </div>
          </div>

            <div class="js-filter-tab js-filter-tags " style="display:none" data-filterable-for="context-commitish-filter-field" data-filterable-type=substring>
              <div class="no-results js-not-filterable">Nothing to show</div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.8.0-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.8.0-rc3" rel="nofollow">v1.8.0-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.8.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.8.0-rc2" rel="nofollow">v1.8.0-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.8.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.8.0-rc1" rel="nofollow">v1.8.0-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.8.0-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.8.0-rc0" rel="nofollow">v1.8.0-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.8.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.8.0" rel="nofollow">v1.8.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.12-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.12-rc3" rel="nofollow">v1.7.12-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.12-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.12-rc2" rel="nofollow">v1.7.12-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.12-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.12-rc1" rel="nofollow">v1.7.12-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.12-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.12-rc0" rel="nofollow">v1.7.12-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.12.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.12.4" rel="nofollow">v1.7.12.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.12.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.12.3" rel="nofollow">v1.7.12.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.12.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.12.2" rel="nofollow">v1.7.12.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.12.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.12.1" rel="nofollow">v1.7.12.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.12/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.12" rel="nofollow">v1.7.12</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11-rc3" rel="nofollow">v1.7.11-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11-rc2" rel="nofollow">v1.7.11-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11-rc1" rel="nofollow">v1.7.11-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11-rc0" rel="nofollow">v1.7.11-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11.7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11.7" rel="nofollow">v1.7.11.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11.6" rel="nofollow">v1.7.11.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11.5" rel="nofollow">v1.7.11.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11.4" rel="nofollow">v1.7.11.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11.3" rel="nofollow">v1.7.11.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11.2" rel="nofollow">v1.7.11.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11.1" rel="nofollow">v1.7.11.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.11/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.11" rel="nofollow">v1.7.11</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10-rc4" rel="nofollow">v1.7.10-rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10-rc3" rel="nofollow">v1.7.10-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10-rc2" rel="nofollow">v1.7.10-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10-rc1" rel="nofollow">v1.7.10-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10-rc0" rel="nofollow">v1.7.10-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10.5" rel="nofollow">v1.7.10.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10.4" rel="nofollow">v1.7.10.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10.3" rel="nofollow">v1.7.10.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10.2" rel="nofollow">v1.7.10.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10.1" rel="nofollow">v1.7.10.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.10/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.10" rel="nofollow">v1.7.10</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9-rc2" rel="nofollow">v1.7.9-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9-rc1" rel="nofollow">v1.7.9-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9-rc0" rel="nofollow">v1.7.9-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9.7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9.7" rel="nofollow">v1.7.9.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9.6" rel="nofollow">v1.7.9.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9.5" rel="nofollow">v1.7.9.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9.4" rel="nofollow">v1.7.9.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9.3" rel="nofollow">v1.7.9.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9.2" rel="nofollow">v1.7.9.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9.1" rel="nofollow">v1.7.9.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.9/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.9" rel="nofollow">v1.7.9</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8-rc4" rel="nofollow">v1.7.8-rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8-rc3" rel="nofollow">v1.7.8-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8-rc2" rel="nofollow">v1.7.8-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8-rc1" rel="nofollow">v1.7.8-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8-rc0" rel="nofollow">v1.7.8-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8.6" rel="nofollow">v1.7.8.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8.5" rel="nofollow">v1.7.8.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8.4" rel="nofollow">v1.7.8.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8.3" rel="nofollow">v1.7.8.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8.2" rel="nofollow">v1.7.8.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8.1" rel="nofollow">v1.7.8.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.8/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.8" rel="nofollow">v1.7.8</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.7-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.7-rc0" rel="nofollow">v1.7.7-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.7.7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.7.7" rel="nofollow">v1.7.7.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.7.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.7.6" rel="nofollow">v1.7.7.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.7.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.7.5" rel="nofollow">v1.7.7.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.7.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.7.4" rel="nofollow">v1.7.7.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.7.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.7.3" rel="nofollow">v1.7.7.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.7.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.7.2" rel="nofollow">v1.7.7.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.7.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.7.1" rel="nofollow">v1.7.7.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.6-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.6-rc3" rel="nofollow">v1.7.6-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.6-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.6-rc2" rel="nofollow">v1.7.6-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.6-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.6-rc1" rel="nofollow">v1.7.6-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.6-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.6-rc0" rel="nofollow">v1.7.6-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.6.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.6.5" rel="nofollow">v1.7.6.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.6.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.6.1" rel="nofollow">v1.7.6.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.6" rel="nofollow">v1.7.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.5-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.5-rc3" rel="nofollow">v1.7.5-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.5-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.5-rc2" rel="nofollow">v1.7.5-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.5-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.5-rc1" rel="nofollow">v1.7.5-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.5-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.5-rc0" rel="nofollow">v1.7.5-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.5.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.5.4" rel="nofollow">v1.7.5.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.5.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.5.3" rel="nofollow">v1.7.5.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.5.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.5.2" rel="nofollow">v1.7.5.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.5.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.5.1" rel="nofollow">v1.7.5.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.5" rel="nofollow">v1.7.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.4-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.4-rc3" rel="nofollow">v1.7.4-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.4-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.4-rc2" rel="nofollow">v1.7.4-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.4-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.4-rc1" rel="nofollow">v1.7.4-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.4-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.4-rc0" rel="nofollow">v1.7.4-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.4.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.4.5" rel="nofollow">v1.7.4.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.4.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.4.4" rel="nofollow">v1.7.4.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.4.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.4.3" rel="nofollow">v1.7.4.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.4.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.4.2" rel="nofollow">v1.7.4.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.4.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.4.1" rel="nofollow">v1.7.4.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.4" rel="nofollow">v1.7.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.3-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.3-rc2" rel="nofollow">v1.7.3-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.3-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.3-rc1" rel="nofollow">v1.7.3-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.3-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.3-rc0" rel="nofollow">v1.7.3-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.3.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.3.5" rel="nofollow">v1.7.3.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.3.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.3.4" rel="nofollow">v1.7.3.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.3.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.3.3" rel="nofollow">v1.7.3.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.3.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.3.2" rel="nofollow">v1.7.3.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.3.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.3.1" rel="nofollow">v1.7.3.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.3" rel="nofollow">v1.7.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.2-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.2-rc3" rel="nofollow">v1.7.2-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.2-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.2-rc2" rel="nofollow">v1.7.2-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.2-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.2-rc1" rel="nofollow">v1.7.2-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.2-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.2-rc0" rel="nofollow">v1.7.2-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.2.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.2.5" rel="nofollow">v1.7.2.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.2.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.2.4" rel="nofollow">v1.7.2.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.2.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.2.3" rel="nofollow">v1.7.2.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.2.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.2.2" rel="nofollow">v1.7.2.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.2.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.2.1" rel="nofollow">v1.7.2.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.2" rel="nofollow">v1.7.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.1-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.1-rc2" rel="nofollow">v1.7.1-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.1-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.1-rc1" rel="nofollow">v1.7.1-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.1-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.1-rc0" rel="nofollow">v1.7.1-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.1.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.1.4" rel="nofollow">v1.7.1.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.1.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.1.3" rel="nofollow">v1.7.1.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.1.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.1.2" rel="nofollow">v1.7.1.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.1.1" rel="nofollow">v1.7.1.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.1" rel="nofollow">v1.7.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0-rc2" rel="nofollow">v1.7.0-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0-rc1" rel="nofollow">v1.7.0-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0-rc0" rel="nofollow">v1.7.0-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0.9/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0.9" rel="nofollow">v1.7.0.9</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0.8/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0.8" rel="nofollow">v1.7.0.8</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0.7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0.7" rel="nofollow">v1.7.0.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0.6" rel="nofollow">v1.7.0.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0.5" rel="nofollow">v1.7.0.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0.4" rel="nofollow">v1.7.0.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0.3" rel="nofollow">v1.7.0.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0.2" rel="nofollow">v1.7.0.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0.1" rel="nofollow">v1.7.0.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.7.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.7.0" rel="nofollow">v1.7.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.6-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.6-rc4" rel="nofollow">v1.6.6-rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.6-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.6-rc3" rel="nofollow">v1.6.6-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.6-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.6-rc2" rel="nofollow">v1.6.6-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.6-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.6-rc1" rel="nofollow">v1.6.6-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.6-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.6-rc0" rel="nofollow">v1.6.6-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.6.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.6.3" rel="nofollow">v1.6.6.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.6.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.6.2" rel="nofollow">v1.6.6.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.6.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.6.1" rel="nofollow">v1.6.6.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.6" rel="nofollow">v1.6.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5-rc3" rel="nofollow">v1.6.5-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5-rc2" rel="nofollow">v1.6.5-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5-rc1" rel="nofollow">v1.6.5-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5-rc0" rel="nofollow">v1.6.5-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5.9/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5.9" rel="nofollow">v1.6.5.9</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5.8/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5.8" rel="nofollow">v1.6.5.8</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5.7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5.7" rel="nofollow">v1.6.5.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5.6" rel="nofollow">v1.6.5.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5.5" rel="nofollow">v1.6.5.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5.4" rel="nofollow">v1.6.5.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5.3" rel="nofollow">v1.6.5.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5.2" rel="nofollow">v1.6.5.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5.1" rel="nofollow">v1.6.5.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.5" rel="nofollow">v1.6.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.4-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.4-rc3" rel="nofollow">v1.6.4-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.4-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.4-rc2" rel="nofollow">v1.6.4-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.4-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.4-rc1" rel="nofollow">v1.6.4-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.4-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.4-rc0" rel="nofollow">v1.6.4-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.4.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.4.5" rel="nofollow">v1.6.4.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.4.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.4.4" rel="nofollow">v1.6.4.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.4.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.4.3" rel="nofollow">v1.6.4.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.4.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.4.2" rel="nofollow">v1.6.4.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.4.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.4.1" rel="nofollow">v1.6.4.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.4" rel="nofollow">v1.6.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.3-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.3-rc4" rel="nofollow">v1.6.3-rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.3-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.3-rc3" rel="nofollow">v1.6.3-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.3-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.3-rc2" rel="nofollow">v1.6.3-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.3-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.3-rc1" rel="nofollow">v1.6.3-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.3-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.3-rc0" rel="nofollow">v1.6.3-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.3.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.3.4" rel="nofollow">v1.6.3.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.3.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.3.3" rel="nofollow">v1.6.3.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.3.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.3.2" rel="nofollow">v1.6.3.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.3.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.3.1" rel="nofollow">v1.6.3.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.3" rel="nofollow">v1.6.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.2-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.2-rc2" rel="nofollow">v1.6.2-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.2-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.2-rc1" rel="nofollow">v1.6.2-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.2-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.2-rc0" rel="nofollow">v1.6.2-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.2.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.2.5" rel="nofollow">v1.6.2.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.2.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.2.4" rel="nofollow">v1.6.2.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.2.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.2.3" rel="nofollow">v1.6.2.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.2.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.2.2" rel="nofollow">v1.6.2.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.2.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.2.1" rel="nofollow">v1.6.2.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.2" rel="nofollow">v1.6.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.1-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.1-rc4" rel="nofollow">v1.6.1-rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.1-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.1-rc3" rel="nofollow">v1.6.1-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.1-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.1-rc2" rel="nofollow">v1.6.1-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.1-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.1-rc1" rel="nofollow">v1.6.1-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.1.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.1.4" rel="nofollow">v1.6.1.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.1.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.1.3" rel="nofollow">v1.6.1.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.1.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.1.2" rel="nofollow">v1.6.1.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.1.1" rel="nofollow">v1.6.1.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.1" rel="nofollow">v1.6.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0-rc3" rel="nofollow">v1.6.0-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0-rc2" rel="nofollow">v1.6.0-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0-rc1" rel="nofollow">v1.6.0-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0-rc0" rel="nofollow">v1.6.0-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0.6" rel="nofollow">v1.6.0.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0.5" rel="nofollow">v1.6.0.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0.4" rel="nofollow">v1.6.0.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0.3" rel="nofollow">v1.6.0.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0.2" rel="nofollow">v1.6.0.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0.1" rel="nofollow">v1.6.0.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.6.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.6.0" rel="nofollow">v1.6.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6-rc3" rel="nofollow">v1.5.6-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6-rc2" rel="nofollow">v1.5.6-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6-rc1" rel="nofollow">v1.5.6-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6-rc0" rel="nofollow">v1.5.6-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6.6" rel="nofollow">v1.5.6.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6.5" rel="nofollow">v1.5.6.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6.4" rel="nofollow">v1.5.6.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6.3" rel="nofollow">v1.5.6.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6.2" rel="nofollow">v1.5.6.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6.1" rel="nofollow">v1.5.6.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.6" rel="nofollow">v1.5.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5-rc3" rel="nofollow">v1.5.5-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5-rc2" rel="nofollow">v1.5.5-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5-rc1" rel="nofollow">v1.5.5-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5-rc0" rel="nofollow">v1.5.5-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5.6" rel="nofollow">v1.5.5.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5.5" rel="nofollow">v1.5.5.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5.4" rel="nofollow">v1.5.5.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5.3" rel="nofollow">v1.5.5.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5.2" rel="nofollow">v1.5.5.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5.1" rel="nofollow">v1.5.5.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.5" rel="nofollow">v1.5.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4-rc5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4-rc5" rel="nofollow">v1.5.4-rc5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4-rc4" rel="nofollow">v1.5.4-rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4-rc3" rel="nofollow">v1.5.4-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4-rc2" rel="nofollow">v1.5.4-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4-rc1" rel="nofollow">v1.5.4-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4-rc0" rel="nofollow">v1.5.4-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4.7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4.7" rel="nofollow">v1.5.4.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4.6" rel="nofollow">v1.5.4.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4.5" rel="nofollow">v1.5.4.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4.4" rel="nofollow">v1.5.4.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4.3" rel="nofollow">v1.5.4.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4.2" rel="nofollow">v1.5.4.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4.1" rel="nofollow">v1.5.4.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.4" rel="nofollow">v1.5.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3-rc7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3-rc7" rel="nofollow">v1.5.3-rc7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3-rc6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3-rc6" rel="nofollow">v1.5.3-rc6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3-rc5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3-rc5" rel="nofollow">v1.5.3-rc5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3-rc4" rel="nofollow">v1.5.3-rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3-rc3" rel="nofollow">v1.5.3-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3-rc2" rel="nofollow">v1.5.3-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3-rc1" rel="nofollow">v1.5.3-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3-rc0" rel="nofollow">v1.5.3-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3.8/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3.8" rel="nofollow">v1.5.3.8</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3.7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3.7" rel="nofollow">v1.5.3.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3.6" rel="nofollow">v1.5.3.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3.5" rel="nofollow">v1.5.3.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3.4" rel="nofollow">v1.5.3.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3.3" rel="nofollow">v1.5.3.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3.2" rel="nofollow">v1.5.3.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3.1" rel="nofollow">v1.5.3.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.3" rel="nofollow">v1.5.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.2-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.2-rc3" rel="nofollow">v1.5.2-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.2-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.2-rc2" rel="nofollow">v1.5.2-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.2-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.2-rc1" rel="nofollow">v1.5.2-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.2-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.2-rc0" rel="nofollow">v1.5.2-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.2.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.2.5" rel="nofollow">v1.5.2.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.2.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.2.4" rel="nofollow">v1.5.2.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.2.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.2.3" rel="nofollow">v1.5.2.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.2.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.2.2" rel="nofollow">v1.5.2.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.2.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.2.1" rel="nofollow">v1.5.2.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.2" rel="nofollow">v1.5.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.1-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.1-rc3" rel="nofollow">v1.5.1-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.1-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.1-rc2" rel="nofollow">v1.5.1-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.1-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.1-rc1" rel="nofollow">v1.5.1-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.1.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.1.6" rel="nofollow">v1.5.1.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.1.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.1.5" rel="nofollow">v1.5.1.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.1.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.1.4" rel="nofollow">v1.5.1.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.1.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.1.3" rel="nofollow">v1.5.1.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.1.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.1.2" rel="nofollow">v1.5.1.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.1.1" rel="nofollow">v1.5.1.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.1" rel="nofollow">v1.5.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0-rc4" rel="nofollow">v1.5.0-rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0-rc3" rel="nofollow">v1.5.0-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0-rc2" rel="nofollow">v1.5.0-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0-rc1" rel="nofollow">v1.5.0-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0-rc0" rel="nofollow">v1.5.0-rc0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0.7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0.7" rel="nofollow">v1.5.0.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0.6" rel="nofollow">v1.5.0.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0.5" rel="nofollow">v1.5.0.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0.4" rel="nofollow">v1.5.0.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0.3" rel="nofollow">v1.5.0.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0.2" rel="nofollow">v1.5.0.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0.1" rel="nofollow">v1.5.0.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.5.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.5.0" rel="nofollow">v1.5.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.4-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.4-rc2" rel="nofollow">v1.4.4-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.4-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.4-rc1" rel="nofollow">v1.4.4-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.4.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.4.5" rel="nofollow">v1.4.4.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.4.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.4.4" rel="nofollow">v1.4.4.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.4.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.4.3" rel="nofollow">v1.4.4.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.4.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.4.2" rel="nofollow">v1.4.4.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.4.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.4.1" rel="nofollow">v1.4.4.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.4" rel="nofollow">v1.4.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.3-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.3-rc3" rel="nofollow">v1.4.3-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.3-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.3-rc2" rel="nofollow">v1.4.3-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.3-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.3-rc1" rel="nofollow">v1.4.3-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.3.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.3.5" rel="nofollow">v1.4.3.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.3.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.3.4" rel="nofollow">v1.4.3.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.3.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.3.3" rel="nofollow">v1.4.3.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.3.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.3.2" rel="nofollow">v1.4.3.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.3.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.3.1" rel="nofollow">v1.4.3.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.3" rel="nofollow">v1.4.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.2-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.2-rc4" rel="nofollow">v1.4.2-rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.2-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.2-rc3" rel="nofollow">v1.4.2-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.2-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.2-rc2" rel="nofollow">v1.4.2-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.2-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.2-rc1" rel="nofollow">v1.4.2-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.2.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.2.4" rel="nofollow">v1.4.2.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.2.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.2.3" rel="nofollow">v1.4.2.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.2.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.2.2" rel="nofollow">v1.4.2.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.2.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.2.1" rel="nofollow">v1.4.2.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.2" rel="nofollow">v1.4.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.1-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.1-rc2" rel="nofollow">v1.4.1-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.1-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.1-rc1" rel="nofollow">v1.4.1-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.1.1" rel="nofollow">v1.4.1.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.1" rel="nofollow">v1.4.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.0-rc2" rel="nofollow">v1.4.0-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.0-rc1" rel="nofollow">v1.4.0-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.4.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.4.0" rel="nofollow">v1.4.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.3.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.3.3" rel="nofollow">v1.3.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.3.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.3.2" rel="nofollow">v1.3.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.3.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.3.1" rel="nofollow">v1.3.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.3.0-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.3.0-rc4" rel="nofollow">v1.3.0-rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.3.0-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.3.0-rc3" rel="nofollow">v1.3.0-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.3.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.3.0-rc2" rel="nofollow">v1.3.0-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.3.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.3.0-rc1" rel="nofollow">v1.3.0-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.3.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.3.0" rel="nofollow">v1.3.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.2.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.2.6" rel="nofollow">v1.2.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.2.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.2.5" rel="nofollow">v1.2.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.2.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.2.4" rel="nofollow">v1.2.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.2.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.2.3" rel="nofollow">v1.2.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.2.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.2.2" rel="nofollow">v1.2.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.2.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.2.1" rel="nofollow">v1.2.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.2.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.2.0" rel="nofollow">v1.2.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.1.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.1.6" rel="nofollow">v1.1.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.1.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.1.5" rel="nofollow">v1.1.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.1.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.1.4" rel="nofollow">v1.1.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.1.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.1.3" rel="nofollow">v1.1.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.1.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.1.2" rel="nofollow">v1.1.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.1.1" rel="nofollow">v1.1.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.1.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.1.0" rel="nofollow">v1.1.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0rc6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0rc6" rel="nofollow">v1.0rc6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0rc5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0rc5" rel="nofollow">v1.0rc5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0rc4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0rc4" rel="nofollow">v1.0rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0rc3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0rc3" rel="nofollow">v1.0rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0rc2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0rc2" rel="nofollow">v1.0rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0rc1" rel="nofollow">v1.0rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.13/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.13" rel="nofollow">v1.0.13</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.12/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.12" rel="nofollow">v1.0.12</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.11/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.11" rel="nofollow">v1.0.11</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.10/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.10" rel="nofollow">v1.0.10</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.9/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.9" rel="nofollow">v1.0.9</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.8/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.8" rel="nofollow">v1.0.8</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.7" rel="nofollow">v1.0.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.6" rel="nofollow">v1.0.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.5" rel="nofollow">v1.0.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.4" rel="nofollow">v1.0.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.3" rel="nofollow">v1.0.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.2" rel="nofollow">v1.0.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.1" rel="nofollow">v1.0.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.0b/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.0b" rel="nofollow">v1.0.0b</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.0a/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.0a" rel="nofollow">v1.0.0a</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v1.0.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v1.0.0" rel="nofollow">v1.0.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9n/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9n" rel="nofollow">v0.99.9n</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9m/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9m" rel="nofollow">v0.99.9m</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9l/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9l" rel="nofollow">v0.99.9l</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9k/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9k" rel="nofollow">v0.99.9k</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9j/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9j" rel="nofollow">v0.99.9j</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9i/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9i" rel="nofollow">v0.99.9i</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9h/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9h" rel="nofollow">v0.99.9h</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9g/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9g" rel="nofollow">v0.99.9g</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9f/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9f" rel="nofollow">v0.99.9f</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9e/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9e" rel="nofollow">v0.99.9e</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9d/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9d" rel="nofollow">v0.99.9d</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9c/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9c" rel="nofollow">v0.99.9c</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9b/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9b" rel="nofollow">v0.99.9b</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9a/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9a" rel="nofollow">v0.99.9a</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.9/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.9" rel="nofollow">v0.99.9</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.8g/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.8g" rel="nofollow">v0.99.8g</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.8f/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.8f" rel="nofollow">v0.99.8f</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.8e/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.8e" rel="nofollow">v0.99.8e</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.8d/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.8d" rel="nofollow">v0.99.8d</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.8c/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.8c" rel="nofollow">v0.99.8c</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.8b/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.8b" rel="nofollow">v0.99.8b</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.8a/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.8a" rel="nofollow">v0.99.8a</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.8/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.8" rel="nofollow">v0.99.8</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.7d/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.7d" rel="nofollow">v0.99.7d</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.7c/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.7c" rel="nofollow">v0.99.7c</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.7b/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.7b" rel="nofollow">v0.99.7b</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.7a/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.7a" rel="nofollow">v0.99.7a</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.7/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.7" rel="nofollow">v0.99.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.6/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.6" rel="nofollow">v0.99.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.5" rel="nofollow">v0.99.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.4" rel="nofollow">v0.99.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.3" rel="nofollow">v0.99.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.2" rel="nofollow">v0.99.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99.1" rel="nofollow">v0.99.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/v0.99/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="v0.99" rel="nofollow">v0.99</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/junio-gpg-pub/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="junio-gpg-pub" rel="nofollow">junio-gpg-pub</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.16.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.16.0" rel="nofollow">gitgui-0.16.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.15.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.15.0" rel="nofollow">gitgui-0.15.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.14.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.14.0" rel="nofollow">gitgui-0.14.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.13.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.13.0" rel="nofollow">gitgui-0.13.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.12.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.12.0" rel="nofollow">gitgui-0.12.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.11.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.11.0" rel="nofollow">gitgui-0.11.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.10.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.10.2" rel="nofollow">gitgui-0.10.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.10.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.10.1" rel="nofollow">gitgui-0.10.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.10.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.10.0" rel="nofollow">gitgui-0.10.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.9.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.9.3" rel="nofollow">gitgui-0.9.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.9.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.9.2" rel="nofollow">gitgui-0.9.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.9.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.9.1" rel="nofollow">gitgui-0.9.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.9.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.9.0" rel="nofollow">gitgui-0.9.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.8.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.8.4" rel="nofollow">gitgui-0.8.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.8.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.8.3" rel="nofollow">gitgui-0.8.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.8.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.8.2" rel="nofollow">gitgui-0.8.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.8.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.8.1" rel="nofollow">gitgui-0.8.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.8.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.8.0" rel="nofollow">gitgui-0.8.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.7.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.7.5" rel="nofollow">gitgui-0.7.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.7.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.7.4" rel="nofollow">gitgui-0.7.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.7.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.7.3" rel="nofollow">gitgui-0.7.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.7.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.7.2" rel="nofollow">gitgui-0.7.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.7.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.7.1" rel="nofollow">gitgui-0.7.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.7.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.7.0-rc1" rel="nofollow">gitgui-0.7.0-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.7.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.7.0" rel="nofollow">gitgui-0.7.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.6.5/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.6.5" rel="nofollow">gitgui-0.6.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.6.4/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.6.4" rel="nofollow">gitgui-0.6.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.6.3/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.6.3" rel="nofollow">gitgui-0.6.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.6.2/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.6.2" rel="nofollow">gitgui-0.6.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.6.1/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.6.1" rel="nofollow">gitgui-0.6.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/git/git/blob/gitgui-0.6.0/contrib/completion/git-prompt.sh" class="js-navigation-open" data-name="gitgui-0.6.0" rel="nofollow">gitgui-0.6.0</a>
                  </h4>
                </div>
            </div>
        </div>
      </div><!-- /.commitish-context-context -->
    </div>
  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/git/git" class="selected tabnav-tab" highlight="repo_source">Files</a></li>
    <li><a href="/git/git/commits/master" class="tabnav-tab" highlight="repo_commits">Commits</a></li>
    <li><a href="/git/git/branches" class="tabnav-tab" highlight="repo_branches" rel="nofollow">Branches <span class="counter ">5</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:d13201c9658dc18abd4a0e01b1ecf71b -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:d13201c9658dc18abd4a0e01b1ecf71b -->

<div id="slider">

    <div class="breadcrumb" data-path="contrib/completion/git-prompt.sh/">
      <b itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/git/git" itemscope="url"><span itemprop="title">git</span></a></b> / <span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/git/git/tree/master/contrib" itemscope="url"><span itemprop="title">contrib</span></a></span> / <span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/git/git/tree/master/contrib/completion" itemscope="url"><span itemprop="title">completion</span></a></span> / <strong class="final-path">git-prompt.sh</strong> <span class="js-clippy mini-icon mini-icon-clippy " data-clipboard-text="contrib/completion/git-prompt.sh" data-copied-hint="copied!" data-copy-hint="copy to clipboard"></span>
    </div>

      
  <div class="commit file-history-tease js-blob-contributors-content" data-path="contrib/completion/git-prompt.sh/">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/fb844ffed6c5a2e69638627e3b721308?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/leto">leto</a></span>
    <time class="js-relative-date" datetime="2012-09-24T12:38:41-07:00" title="2012-09-24 12:38:41">September 24, 2012</time>
    <div class="commit-title">
        <a href="/git/git/commit/f9db19214a15a1c384dd895ccda2a455824179cd" class="message">Improve the description of GIT_PS1_SHOWUPSTREAM</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>3</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="leto" href="/git/git/commits/master/contrib/completion/git-prompt.sh?author=leto"><img height="20" src="https://secure.gravatar.com/avatar/fb844ffed6c5a2e69638627e3b721308?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="felipec" href="/git/git/commits/master/contrib/completion/git-prompt.sh?author=felipec"><img height="20" src="https://secure.gravatar.com/avatar/1bb1c1a41b92d9f18e2890c3f6d33970?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="gitster" href="/git/git/commits/master/contrib/completion/git-prompt.sh?author=gitster"><img height="20" src="https://secure.gravatar.com/avatar/750680c9dcc7d0be3ca83464a0da49d8?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2>Users on GitHub who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/fb844ffed6c5a2e69638627e3b721308?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/leto">leto</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/1bb1c1a41b92d9f18e2890c3f6d33970?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/felipec">felipec</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/750680c9dcc7d0be3ca83464a0da49d8?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/gitster">gitster</a>
        </li>
      </ul>
    </div>
  </div>


    <div class="frames">
      <div class="frame frame-center" data-path="contrib/completion/git-prompt.sh/" data-permalink-url="/git/git/blob/8c7a786b6c8eae8eac91083cdc9a6e337bc133b0/contrib/completion/git-prompt.sh" data-title="git/contrib/completion/git-prompt.sh at master · git/git · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="mini-icon mini-icon-text-file"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>291 lines (271 sloc)</span>
                <span>8.192 kb</span>
              </div>
              <ul class="button-group actions">
                  <li>
                    <a class="grouped-button file-edit-link minibutton bigger lighter" href="/git/git/edit/master/contrib/completion/git-prompt.sh" data-method="post" rel="nofollow" data-hotkey="e">Edit</a>
                  </li>
                <li>
                  <a href="/git/git/raw/master/contrib/completion/git-prompt.sh" class="minibutton grouped-button bigger lighter" id="raw-url">Raw</a>
                </li>
                  <li>
                    <a href="/git/git/blame/master/contrib/completion/git-prompt.sh" class="minibutton grouped-button bigger lighter">Blame</a>
                  </li>
                <li>
                  <a href="/git/git/commits/master/contrib/completion/git-prompt.sh" class="minibutton grouped-button bigger lighter" rel="nofollow">History</a>
                </li>
              </ul>
            </div>
                <div class="data type-shell">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
</pre>
          </td>
          <td width="100%">
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c"># bash/zsh git prompt support</span></div><div class='line' id='LC2'><span class="c">#</span></div><div class='line' id='LC3'><span class="c"># Copyright (C) 2006,2007 Shawn O. Pearce &lt;spearce@spearce.org&gt;</span></div><div class='line' id='LC4'><span class="c"># Distributed under the GNU General Public License, version 2.0.</span></div><div class='line' id='LC5'><span class="c">#</span></div><div class='line' id='LC6'><span class="c"># This script allows you to see the current branch in your prompt.</span></div><div class='line' id='LC7'><span class="c">#</span></div><div class='line' id='LC8'><span class="c"># To enable:</span></div><div class='line' id='LC9'><span class="c">#</span></div><div class='line' id='LC10'><span class="c">#    1) Copy this file to somewhere (e.g. ~/.git-prompt.sh).</span></div><div class='line' id='LC11'><span class="c">#    2) Add the following line to your .bashrc/.zshrc:</span></div><div class='line' id='LC12'><span class="c">#        source ~/.git-prompt.sh</span></div><div class='line' id='LC13'><span class="c">#    3) Change your PS1 to also show the current branch:</span></div><div class='line' id='LC14'><span class="c">#         Bash: PS1=&#39;[\u@\h \W$(__git_ps1 &quot; (%s)&quot;)]\$ &#39;</span></div><div class='line' id='LC15'><span class="c">#         ZSH:  PS1=&#39;[%n@%m %c$(__git_ps1 &quot; (%s)&quot;)]\$ &#39;</span></div><div class='line' id='LC16'><span class="c">#</span></div><div class='line' id='LC17'><span class="c"># The argument to __git_ps1 will be displayed only if you are currently</span></div><div class='line' id='LC18'><span class="c"># in a git repository.  The %s token will be the name of the current</span></div><div class='line' id='LC19'><span class="c"># branch.</span></div><div class='line' id='LC20'><span class="c">#</span></div><div class='line' id='LC21'><span class="c"># In addition, if you set GIT_PS1_SHOWDIRTYSTATE to a nonempty value,</span></div><div class='line' id='LC22'><span class="c"># unstaged (*) and staged (+) changes will be shown next to the branch</span></div><div class='line' id='LC23'><span class="c"># name.  You can configure this per-repository with the</span></div><div class='line' id='LC24'><span class="c"># bash.showDirtyState variable, which defaults to true once</span></div><div class='line' id='LC25'><span class="c"># GIT_PS1_SHOWDIRTYSTATE is enabled.</span></div><div class='line' id='LC26'><span class="c">#</span></div><div class='line' id='LC27'><span class="c"># You can also see if currently something is stashed, by setting</span></div><div class='line' id='LC28'><span class="c"># GIT_PS1_SHOWSTASHSTATE to a nonempty value. If something is stashed,</span></div><div class='line' id='LC29'><span class="c"># then a &#39;$&#39; will be shown next to the branch name.</span></div><div class='line' id='LC30'><span class="c">#</span></div><div class='line' id='LC31'><span class="c"># If you would like to see if there&#39;re untracked files, then you can set</span></div><div class='line' id='LC32'><span class="c"># GIT_PS1_SHOWUNTRACKEDFILES to a nonempty value. If there&#39;re untracked</span></div><div class='line' id='LC33'><span class="c"># files, then a &#39;%&#39; will be shown next to the branch name.</span></div><div class='line' id='LC34'><span class="c">#</span></div><div class='line' id='LC35'><span class="c"># If you would like to see the difference between HEAD and its upstream,</span></div><div class='line' id='LC36'><span class="c"># set GIT_PS1_SHOWUPSTREAM=&quot;auto&quot;.  A &quot;&lt;&quot; indicates you are behind, &quot;&gt;&quot;</span></div><div class='line' id='LC37'><span class="c"># indicates you are ahead, &quot;&lt;&gt;&quot; indicates you have diverged and &quot;=&quot;</span></div><div class='line' id='LC38'><span class="c"># indicates that there is no difference. You can further control</span></div><div class='line' id='LC39'><span class="c"># behaviour by setting GIT_PS1_SHOWUPSTREAM to a space-separated list</span></div><div class='line' id='LC40'><span class="c"># of values:</span></div><div class='line' id='LC41'><span class="c">#</span></div><div class='line' id='LC42'><span class="c">#     verbose       show number of commits ahead/behind (+/-) upstream</span></div><div class='line' id='LC43'><span class="c">#     legacy        don&#39;t use the &#39;--count&#39; option available in recent</span></div><div class='line' id='LC44'><span class="c">#                   versions of git-rev-list</span></div><div class='line' id='LC45'><span class="c">#     git           always compare HEAD to @{upstream}</span></div><div class='line' id='LC46'><span class="c">#     svn           always compare HEAD to your SVN upstream</span></div><div class='line' id='LC47'><span class="c">#</span></div><div class='line' id='LC48'><span class="c"># By default, __git_ps1 will compare HEAD to your SVN upstream if it can</span></div><div class='line' id='LC49'><span class="c"># find one, or @{upstream} otherwise.  Once you have set</span></div><div class='line' id='LC50'><span class="c"># GIT_PS1_SHOWUPSTREAM, you can override it on a per-repository basis by</span></div><div class='line' id='LC51'><span class="c"># setting the bash.showUpstream config variable.</span></div><div class='line' id='LC52'><br/></div><div class='line' id='LC53'><span class="c"># __gitdir accepts 0 or 1 arguments (i.e., location)</span></div><div class='line' id='LC54'><span class="c"># returns location of .git repo</span></div><div class='line' id='LC55'>__gitdir <span class="o">()</span></div><div class='line' id='LC56'><span class="o">{</span></div><div class='line' id='LC57'>	<span class="c"># Note: this function is duplicated in git-completion.bash</span></div><div class='line' id='LC58'>	<span class="c"># When updating it, make sure you update the other one to match.</span></div><div class='line' id='LC59'>	<span class="k">if</span> <span class="o">[</span> -z <span class="s2">&quot;${1-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC60'><span class="k">		if</span> <span class="o">[</span> -n <span class="s2">&quot;${__git_dir-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC61'><span class="k">			</span><span class="nb">echo</span> <span class="s2">&quot;$__git_dir&quot;</span></div><div class='line' id='LC62'>		<span class="k">elif</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_DIR-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC63'><span class="k">			</span><span class="nb">test</span> -d <span class="s2">&quot;${GIT_DIR-}&quot;</span> <span class="o">||</span> <span class="k">return </span>1</div><div class='line' id='LC64'>			<span class="nb">echo</span> <span class="s2">&quot;$GIT_DIR&quot;</span></div><div class='line' id='LC65'>		<span class="k">elif</span> <span class="o">[</span> -d .git <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC66'><span class="k">			</span><span class="nb">echo</span> .git</div><div class='line' id='LC67'>		<span class="k">else</span></div><div class='line' id='LC68'><span class="k">			</span>git rev-parse --git-dir 2&gt;/dev/null</div><div class='line' id='LC69'>		<span class="k">fi</span></div><div class='line' id='LC70'><span class="k">	elif</span> <span class="o">[</span> -d <span class="s2">&quot;$1/.git&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC71'><span class="k">		</span><span class="nb">echo</span> <span class="s2">&quot;$1/.git&quot;</span></div><div class='line' id='LC72'>	<span class="k">else</span></div><div class='line' id='LC73'><span class="k">		</span><span class="nb">echo</span> <span class="s2">&quot;$1&quot;</span></div><div class='line' id='LC74'>	<span class="k">fi</span></div><div class='line' id='LC75'><span class="o">}</span></div><div class='line' id='LC76'><br/></div><div class='line' id='LC77'><span class="c"># stores the divergence from upstream in $p</span></div><div class='line' id='LC78'><span class="c"># used by GIT_PS1_SHOWUPSTREAM</span></div><div class='line' id='LC79'>__git_ps1_show_upstream <span class="o">()</span></div><div class='line' id='LC80'><span class="o">{</span></div><div class='line' id='LC81'>	<span class="nb">local </span>key value</div><div class='line' id='LC82'>	<span class="nb">local </span>svn_remote svn_url_pattern count n</div><div class='line' id='LC83'>	<span class="nb">local </span><span class="nv">upstream</span><span class="o">=</span>git <span class="nv">legacy</span><span class="o">=</span><span class="s2">&quot;&quot;</span> <span class="nv">verbose</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC84'><br/></div><div class='line' id='LC85'>	<span class="nv">svn_remote</span><span class="o">=()</span></div><div class='line' id='LC86'>	<span class="c"># get some config options from git-config</span></div><div class='line' id='LC87'>	<span class="nb">local </span><span class="nv">output</span><span class="o">=</span><span class="s2">&quot;$(git config -z --get-regexp &#39;^(svn-remote\..*\.url|bash\.showupstream)$&#39; 2&gt;/dev/null | tr &#39;\0\n&#39; &#39;\n &#39;)&quot;</span></div><div class='line' id='LC88'>	<span class="k">while </span><span class="nb">read</span> -r key value; <span class="k">do</span></div><div class='line' id='LC89'><span class="k">		case</span> <span class="s2">&quot;$key&quot;</span> in</div><div class='line' id='LC90'>		bash.showupstream<span class="o">)</span></div><div class='line' id='LC91'>			<span class="nv">GIT_PS1_SHOWUPSTREAM</span><span class="o">=</span><span class="s2">&quot;$value&quot;</span></div><div class='line' id='LC92'>			<span class="k">if</span> <span class="o">[[</span> -z <span class="s2">&quot;${GIT_PS1_SHOWUPSTREAM}&quot;</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC93'><span class="k">				</span><span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC94'>				<span class="k">return</span></div><div class='line' id='LC95'><span class="k">			fi</span></div><div class='line' id='LC96'>			;;</div><div class='line' id='LC97'>		svn-remote.*.url<span class="o">)</span></div><div class='line' id='LC98'>			svn_remote<span class="o">[</span> <span class="k">$((${#</span><span class="nv">svn_remote</span><span class="p">[@]</span><span class="k">}</span> <span class="o">+</span> <span class="m">1</span><span class="k">))</span> <span class="o">]=</span><span class="s2">&quot;$value&quot;</span></div><div class='line' id='LC99'>			svn_url_pattern+<span class="o">=</span><span class="s2">&quot;\\|$value&quot;</span></div><div class='line' id='LC100'>			<span class="nv">upstream</span><span class="o">=</span>svn+git <span class="c"># default upstream is SVN if available, else git</span></div><div class='line' id='LC101'>			;;</div><div class='line' id='LC102'>		<span class="k">esac</span></div><div class='line' id='LC103'><span class="k">	done</span> &lt;&lt;&lt; <span class="s2">&quot;$output&quot;</span></div><div class='line' id='LC104'><br/></div><div class='line' id='LC105'>	<span class="c"># parse configuration values</span></div><div class='line' id='LC106'>	<span class="k">for </span>option in <span class="k">${</span><span class="nv">GIT_PS1_SHOWUPSTREAM</span><span class="k">}</span>; <span class="k">do</span></div><div class='line' id='LC107'><span class="k">		case</span> <span class="s2">&quot;$option&quot;</span> in</div><div class='line' id='LC108'>		git|svn<span class="o">)</span> <span class="nv">upstream</span><span class="o">=</span><span class="s2">&quot;$option&quot;</span> ;;</div><div class='line' id='LC109'>		verbose<span class="o">)</span> <span class="nv">verbose</span><span class="o">=</span>1 ;;</div><div class='line' id='LC110'>		legacy<span class="o">)</span>  <span class="nv">legacy</span><span class="o">=</span>1  ;;</div><div class='line' id='LC111'>		<span class="k">esac</span></div><div class='line' id='LC112'><span class="k">	done</span></div><div class='line' id='LC113'><br/></div><div class='line' id='LC114'>	<span class="c"># Find our upstream</span></div><div class='line' id='LC115'>	<span class="k">case</span> <span class="s2">&quot;$upstream&quot;</span> in</div><div class='line' id='LC116'>	git<span class="o">)</span>    <span class="nv">upstream</span><span class="o">=</span><span class="s2">&quot;@{upstream}&quot;</span> ;;</div><div class='line' id='LC117'>	svn*<span class="o">)</span></div><div class='line' id='LC118'>		<span class="c"># get the upstream from the &quot;git-svn-id: ...&quot; in a commit message</span></div><div class='line' id='LC119'>		<span class="c"># (git-svn uses essentially the same procedure internally)</span></div><div class='line' id='LC120'>		<span class="nb">local </span><span class="nv">svn_upstream</span><span class="o">=(</span><span class="k">$(</span>git log --first-parent -1 <span class="se">\</span></div><div class='line' id='LC121'>					--grep<span class="o">=</span><span class="s2">&quot;^git-svn-id: \(${svn_url_pattern#??}\)&quot;</span> 2&gt;/dev/null<span class="k">)</span><span class="o">)</span></div><div class='line' id='LC122'>		<span class="k">if</span> <span class="o">[[</span> 0 -ne <span class="k">${#</span><span class="nv">svn_upstream</span><span class="p">[@]</span><span class="k">}</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC123'><span class="k">			</span><span class="nv">svn_upstream</span><span class="o">=</span><span class="k">${</span><span class="nv">svn_upstream</span><span class="p">[ </span><span class="k">${#</span><span class="nv">svn_upstream</span><span class="p">[@]</span><span class="k">}</span><span class="p"> - 2 ]</span><span class="k">}</span></div><div class='line' id='LC124'>			<span class="nv">svn_upstream</span><span class="o">=</span><span class="k">${</span><span class="nv">svn_upstream</span><span class="p">%@*</span><span class="k">}</span></div><div class='line' id='LC125'>			<span class="nb">local </span><span class="nv">n_stop</span><span class="o">=</span><span class="s2">&quot;${#svn_remote[@]}&quot;</span></div><div class='line' id='LC126'>			<span class="k">for</span> <span class="o">((</span><span class="nv">n</span><span class="o">=</span>1; n &lt;<span class="o">=</span> n_stop; n++<span class="o">))</span>; <span class="k">do</span></div><div class='line' id='LC127'><span class="k">				</span><span class="nv">svn_upstream</span><span class="o">=</span><span class="k">${</span><span class="nv">svn_upstream</span><span class="p">#</span><span class="k">${</span><span class="nv">svn_remote</span><span class="p">[</span><span class="nv">$n</span><span class="p">]</span><span class="k">}}</span></div><div class='line' id='LC128'>			<span class="k">done</span></div><div class='line' id='LC129'><br/></div><div class='line' id='LC130'><span class="k">			if</span> <span class="o">[[</span> -z <span class="s2">&quot;$svn_upstream&quot;</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC131'>				<span class="c"># default branch name for checkouts with no layout:</span></div><div class='line' id='LC132'>				<span class="nv">upstream</span><span class="o">=</span><span class="k">${</span><span class="nv">GIT_SVN_ID</span><span class="k">:-</span><span class="nv">git</span><span class="p">-svn</span><span class="k">}</span></div><div class='line' id='LC133'>			<span class="k">else</span></div><div class='line' id='LC134'><span class="k">				</span><span class="nv">upstream</span><span class="o">=</span><span class="k">${</span><span class="nv">svn_upstream</span><span class="p">#/</span><span class="k">}</span></div><div class='line' id='LC135'>			<span class="k">fi</span></div><div class='line' id='LC136'><span class="k">		elif</span> <span class="o">[[</span> <span class="s2">&quot;svn+git&quot;</span> <span class="o">=</span> <span class="s2">&quot;$upstream&quot;</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC137'><span class="k">			</span><span class="nv">upstream</span><span class="o">=</span><span class="s2">&quot;@{upstream}&quot;</span></div><div class='line' id='LC138'>		<span class="k">fi</span></div><div class='line' id='LC139'>		;;</div><div class='line' id='LC140'>	<span class="k">esac</span></div><div class='line' id='LC141'><br/></div><div class='line' id='LC142'>	<span class="c"># Find how many commits we are ahead/behind our upstream</span></div><div class='line' id='LC143'>	<span class="k">if</span> <span class="o">[[</span> -z <span class="s2">&quot;$legacy&quot;</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC144'><span class="k">		</span><span class="nv">count</span><span class="o">=</span><span class="s2">&quot;$(git rev-list --count --left-right \</span></div><div class='line' id='LC145'><span class="s2">				&quot;</span><span class="nv">$upstream</span><span class="s2">&quot;...HEAD 2&gt;/dev/null)&quot;</span></div><div class='line' id='LC146'>	<span class="k">else</span></div><div class='line' id='LC147'>		<span class="c"># produce equivalent output to --count for older versions of git</span></div><div class='line' id='LC148'>		<span class="nb">local </span>commits</div><div class='line' id='LC149'>		<span class="k">if </span><span class="nv">commits</span><span class="o">=</span><span class="s2">&quot;$(git rev-list --left-right &quot;</span><span class="nv">$upstream</span><span class="s2">&quot;...HEAD 2&gt;/dev/null)&quot;</span></div><div class='line' id='LC150'>		<span class="k">then</span></div><div class='line' id='LC151'><span class="k">			</span><span class="nb">local </span>commit <span class="nv">behind</span><span class="o">=</span>0 <span class="nv">ahead</span><span class="o">=</span>0</div><div class='line' id='LC152'>			<span class="k">for </span>commit in <span class="nv">$commits</span></div><div class='line' id='LC153'>			<span class="k">do</span></div><div class='line' id='LC154'><span class="k">				case</span> <span class="s2">&quot;$commit&quot;</span> in</div><div class='line' id='LC155'>				<span class="s2">&quot;&lt;&quot;</span>*<span class="o">)</span> <span class="o">((</span>behind++<span class="o">))</span> ;;</div><div class='line' id='LC156'>				*<span class="o">)</span>    <span class="o">((</span>ahead++<span class="o">))</span>  ;;</div><div class='line' id='LC157'>				<span class="k">esac</span></div><div class='line' id='LC158'><span class="k">			done</span></div><div class='line' id='LC159'><span class="k">			</span><span class="nv">count</span><span class="o">=</span><span class="s2">&quot;$behind	$ahead&quot;</span></div><div class='line' id='LC160'>		<span class="k">else</span></div><div class='line' id='LC161'><span class="k">			</span><span class="nv">count</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC162'>		<span class="k">fi</span></div><div class='line' id='LC163'><span class="k">	fi</span></div><div class='line' id='LC164'><br/></div><div class='line' id='LC165'>	<span class="c"># calculate the result</span></div><div class='line' id='LC166'>	<span class="k">if</span> <span class="o">[[</span> -z <span class="s2">&quot;$verbose&quot;</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC167'><span class="k">		case</span> <span class="s2">&quot;$count&quot;</span> in</div><div class='line' id='LC168'>		<span class="s2">&quot;&quot;</span><span class="o">)</span> <span class="c"># no upstream</span></div><div class='line' id='LC169'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&quot;</span> ;;</div><div class='line' id='LC170'>		<span class="s2">&quot;0	0&quot;</span><span class="o">)</span> <span class="c"># equal to upstream</span></div><div class='line' id='LC171'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;=&quot;</span> ;;</div><div class='line' id='LC172'>		<span class="s2">&quot;0	&quot;</span>*<span class="o">)</span> <span class="c"># ahead of upstream</span></div><div class='line' id='LC173'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&gt;&quot;</span> ;;</div><div class='line' id='LC174'>		*<span class="s2">&quot;	0&quot;</span><span class="o">)</span> <span class="c"># behind upstream</span></div><div class='line' id='LC175'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&lt;&quot;</span> ;;</div><div class='line' id='LC176'>		*<span class="o">)</span>	    <span class="c"># diverged from upstream</span></div><div class='line' id='LC177'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&lt;&gt;&quot;</span> ;;</div><div class='line' id='LC178'>		<span class="k">esac</span></div><div class='line' id='LC179'><span class="k">	else</span></div><div class='line' id='LC180'><span class="k">		case</span> <span class="s2">&quot;$count&quot;</span> in</div><div class='line' id='LC181'>		<span class="s2">&quot;&quot;</span><span class="o">)</span> <span class="c"># no upstream</span></div><div class='line' id='LC182'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&quot;</span> ;;</div><div class='line' id='LC183'>		<span class="s2">&quot;0	0&quot;</span><span class="o">)</span> <span class="c"># equal to upstream</span></div><div class='line' id='LC184'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot; u=&quot;</span> ;;</div><div class='line' id='LC185'>		<span class="s2">&quot;0	&quot;</span>*<span class="o">)</span> <span class="c"># ahead of upstream</span></div><div class='line' id='LC186'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot; u+${count#0	}&quot;</span> ;;</div><div class='line' id='LC187'>		*<span class="s2">&quot;	0&quot;</span><span class="o">)</span> <span class="c"># behind upstream</span></div><div class='line' id='LC188'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot; u-${count%	0}&quot;</span> ;;</div><div class='line' id='LC189'>		*<span class="o">)</span>	    <span class="c"># diverged from upstream</span></div><div class='line' id='LC190'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot; u+${count#*	}-${count%	*}&quot;</span> ;;</div><div class='line' id='LC191'>		<span class="k">esac</span></div><div class='line' id='LC192'><span class="k">	fi</span></div><div class='line' id='LC193'><br/></div><div class='line' id='LC194'><span class="o">}</span></div><div class='line' id='LC195'><br/></div><div class='line' id='LC196'><br/></div><div class='line' id='LC197'><span class="c"># __git_ps1 accepts 0 or 1 arguments (i.e., format string)</span></div><div class='line' id='LC198'><span class="c"># returns text to add to bash PS1 prompt (includes branch name)</span></div><div class='line' id='LC199'>__git_ps1 <span class="o">()</span></div><div class='line' id='LC200'><span class="o">{</span></div><div class='line' id='LC201'>	<span class="nb">local </span><span class="nv">g</span><span class="o">=</span><span class="s2">&quot;$(__gitdir)&quot;</span></div><div class='line' id='LC202'>	<span class="k">if</span> <span class="o">[</span> -n <span class="s2">&quot;$g&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC203'><span class="k">		</span><span class="nb">local </span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC204'>		<span class="nb">local </span><span class="nv">b</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC205'>		<span class="k">if</span> <span class="o">[</span> -f <span class="s2">&quot;$g/rebase-merge/interactive&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC206'><span class="k">			</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|REBASE-i&quot;</span></div><div class='line' id='LC207'>			<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;$(cat &quot;</span><span class="nv">$g</span>/rebase-merge/head-name<span class="s2">&quot;)&quot;</span></div><div class='line' id='LC208'>		<span class="k">elif</span> <span class="o">[</span> -d <span class="s2">&quot;$g/rebase-merge&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC209'><span class="k">			</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|REBASE-m&quot;</span></div><div class='line' id='LC210'>			<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;$(cat &quot;</span><span class="nv">$g</span>/rebase-merge/head-name<span class="s2">&quot;)&quot;</span></div><div class='line' id='LC211'>		<span class="k">else</span></div><div class='line' id='LC212'><span class="k">			if</span> <span class="o">[</span> -d <span class="s2">&quot;$g/rebase-apply&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC213'><span class="k">				if</span> <span class="o">[</span> -f <span class="s2">&quot;$g/rebase-apply/rebasing&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC214'><span class="k">					</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|REBASE&quot;</span></div><div class='line' id='LC215'>				<span class="k">elif</span> <span class="o">[</span> -f <span class="s2">&quot;$g/rebase-apply/applying&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC216'><span class="k">					</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|AM&quot;</span></div><div class='line' id='LC217'>				<span class="k">else</span></div><div class='line' id='LC218'><span class="k">					</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|AM/REBASE&quot;</span></div><div class='line' id='LC219'>				<span class="k">fi</span></div><div class='line' id='LC220'><span class="k">			elif</span> <span class="o">[</span> -f <span class="s2">&quot;$g/MERGE_HEAD&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC221'><span class="k">				</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|MERGING&quot;</span></div><div class='line' id='LC222'>			<span class="k">elif</span> <span class="o">[</span> -f <span class="s2">&quot;$g/CHERRY_PICK_HEAD&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC223'><span class="k">				</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|CHERRY-PICKING&quot;</span></div><div class='line' id='LC224'>			<span class="k">elif</span> <span class="o">[</span> -f <span class="s2">&quot;$g/BISECT_LOG&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC225'><span class="k">				</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|BISECTING&quot;</span></div><div class='line' id='LC226'>			<span class="k">fi</span></div><div class='line' id='LC227'><br/></div><div class='line' id='LC228'><span class="k">			</span><span class="nv">b</span><span class="o">=</span><span class="s2">&quot;$(git symbolic-ref HEAD 2&gt;/dev/null)&quot;</span> <span class="o">||</span> <span class="o">{</span></div><div class='line' id='LC229'><br/></div><div class='line' id='LC230'>				<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;$(</span></div><div class='line' id='LC231'><span class="s2">				case &quot;</span><span class="k">${</span><span class="nv">GIT_PS1_DESCRIBE_STYLE</span><span class="p">-</span><span class="k">}</span><span class="s2">&quot; in</span></div><div class='line' id='LC232'><span class="s2">				(contains)</span></div><div class='line' id='LC233'><span class="s2">					git describe --contains HEAD ;;</span></div><div class='line' id='LC234'><span class="s2">				(branch)</span></div><div class='line' id='LC235'><span class="s2">					git describe --contains --all HEAD ;;</span></div><div class='line' id='LC236'><span class="s2">				(describe)</span></div><div class='line' id='LC237'><span class="s2">					git describe HEAD ;;</span></div><div class='line' id='LC238'><span class="s2">				(* | default)</span></div><div class='line' id='LC239'><span class="s2">					git describe --tags --exact-match HEAD ;;</span></div><div class='line' id='LC240'><span class="s2">				esac 2&gt;/dev/null)&quot;</span> <span class="o">||</span></div><div class='line' id='LC241'><br/></div><div class='line' id='LC242'>				<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;$(cut -c1-7 &quot;</span><span class="nv">$g</span>/HEAD<span class="s2">&quot; 2&gt;/dev/null)...&quot;</span> <span class="o">||</span></div><div class='line' id='LC243'>				<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;unknown&quot;</span></div><div class='line' id='LC244'>				<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;($b)&quot;</span></div><div class='line' id='LC245'>			<span class="o">}</span></div><div class='line' id='LC246'>		<span class="k">fi</span></div><div class='line' id='LC247'><br/></div><div class='line' id='LC248'><span class="k">		</span><span class="nb">local </span><span class="nv">w</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC249'>		<span class="nb">local </span><span class="nv">i</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC250'>		<span class="nb">local </span><span class="nv">s</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC251'>		<span class="nb">local </span><span class="nv">u</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC252'>		<span class="nb">local </span><span class="nv">c</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC253'>		<span class="nb">local </span><span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC254'><br/></div><div class='line' id='LC255'>		<span class="k">if</span> <span class="o">[</span> <span class="s2">&quot;true&quot;</span> <span class="o">=</span> <span class="s2">&quot;$(git rev-parse --is-inside-git-dir 2&gt;/dev/null)&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC256'><span class="k">			if</span> <span class="o">[</span> <span class="s2">&quot;true&quot;</span> <span class="o">=</span> <span class="s2">&quot;$(git rev-parse --is-bare-repository 2&gt;/dev/null)&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC257'><span class="k">				</span><span class="nv">c</span><span class="o">=</span><span class="s2">&quot;BARE:&quot;</span></div><div class='line' id='LC258'>			<span class="k">else</span></div><div class='line' id='LC259'><span class="k">				</span><span class="nv">b</span><span class="o">=</span><span class="s2">&quot;GIT_DIR!&quot;</span></div><div class='line' id='LC260'>			<span class="k">fi</span></div><div class='line' id='LC261'><span class="k">		elif</span> <span class="o">[</span> <span class="s2">&quot;true&quot;</span> <span class="o">=</span> <span class="s2">&quot;$(git rev-parse --is-inside-work-tree 2&gt;/dev/null)&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC262'><span class="k">			if</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_PS1_SHOWDIRTYSTATE-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC263'><span class="k">				if</span> <span class="o">[</span> <span class="s2">&quot;$(git config --bool bash.showDirtyState)&quot;</span> !<span class="o">=</span> <span class="s2">&quot;false&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC264'><span class="k">					</span>git diff --no-ext-diff --quiet --exit-code <span class="o">||</span> <span class="nv">w</span><span class="o">=</span><span class="s2">&quot;*&quot;</span></div><div class='line' id='LC265'>					<span class="k">if </span>git rev-parse --quiet --verify HEAD &gt;/dev/null; <span class="k">then</span></div><div class='line' id='LC266'><span class="k">						</span>git diff-index --cached --quiet HEAD -- <span class="o">||</span> <span class="nv">i</span><span class="o">=</span><span class="s2">&quot;+&quot;</span></div><div class='line' id='LC267'>					<span class="k">else</span></div><div class='line' id='LC268'><span class="k">						</span><span class="nv">i</span><span class="o">=</span><span class="s2">&quot;#&quot;</span></div><div class='line' id='LC269'>					<span class="k">fi</span></div><div class='line' id='LC270'><span class="k">				fi</span></div><div class='line' id='LC271'><span class="k">			fi</span></div><div class='line' id='LC272'><span class="k">			if</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_PS1_SHOWSTASHSTATE-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC273'><span class="k">				</span>git rev-parse --verify refs/stash &gt;/dev/null 2&gt;&amp;1 <span class="o">&amp;&amp;</span> <span class="nv">s</span><span class="o">=</span><span class="s2">&quot;$&quot;</span></div><div class='line' id='LC274'>			<span class="k">fi</span></div><div class='line' id='LC275'><br/></div><div class='line' id='LC276'><span class="k">			if</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_PS1_SHOWUNTRACKEDFILES-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC277'><span class="k">				if</span> <span class="o">[</span> -n <span class="s2">&quot;$(git ls-files --others --exclude-standard)&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC278'><span class="k">					</span><span class="nv">u</span><span class="o">=</span><span class="s2">&quot;%&quot;</span></div><div class='line' id='LC279'>				<span class="k">fi</span></div><div class='line' id='LC280'><span class="k">			fi</span></div><div class='line' id='LC281'><br/></div><div class='line' id='LC282'><span class="k">			if</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_PS1_SHOWUPSTREAM-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC283'><span class="k">				</span>__git_ps1_show_upstream</div><div class='line' id='LC284'>			<span class="k">fi</span></div><div class='line' id='LC285'><span class="k">		fi</span></div><div class='line' id='LC286'><br/></div><div class='line' id='LC287'><span class="k">		</span><span class="nb">local </span><span class="nv">f</span><span class="o">=</span><span class="s2">&quot;$w$i$s$u&quot;</span></div><div class='line' id='LC288'>		<span class="nb">printf</span> -- <span class="s2">&quot;${1:- (%s)}&quot;</span> <span class="s2">&quot;$c${b##refs/heads/}${f:+ $f}$r$p&quot;</span></div><div class='line' id='LC289'>	<span class="k">fi</span></div><div class='line' id='LC290'><span class="o">}</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>
      </div>
    </div>
</div>

<div class="frame frame-loading large-loading-area" style="display:none;" data-tree-list-url="/git/git/tree-list/8c7a786b6c8eae8eac91083cdc9a6e337bc133b0">
  <img src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1347543527" height="64" width="64">
</div>

        </div>
      </div>
      <div class="context-overlay"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer" >
        
  <div class="upper_footer">
     <div class="container clearfix">

       <!--[if IE]><h4 id="blacktocat_ie">GitHub Links</h4><![endif]-->
       <![if !IE]><h4 id="blacktocat">GitHub Links</h4><![endif]>

       <ul class="footer_nav">
         <h4>GitHub</h4>
         <li><a href="https://github.com/about">About</a></li>
         <li><a href="https://github.com/blog">Blog</a></li>
         <li><a href="https://github.com/features">Features</a></li>
         <li><a href="https://github.com/contact">Contact &amp; Support</a></li>
         <li><a href="http://training.github.com/">Training</a></li>
         <li><a href="http://enterprise.github.com/">GitHub Enterprise</a></li>
         <li><a href="http://status.github.com/">Site Status</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Clients</h4>
         <li><a href="http://mac.github.com/">GitHub for Mac</a></li>
         <li><a href="http://windows.github.com/">GitHub for Windows</a></li>
         <li><a href="http://eclipse.github.com/">GitHub for Eclipse</a></li>
         <li><a href="http://mobile.github.com/">GitHub Mobile Apps</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Tools</h4>
         <li><a href="http://get.gaug.es/">Gauges: Web analytics</a></li>
         <li><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></li>
         <li><a href="https://gist.github.com">Gist: Code snippets</a></li>

         <h4 class="second">Extras</h4>
         <li><a href="http://jobs.github.com/">Job Board</a></li>
         <li><a href="http://shop.github.com/">GitHub Shop</a></li>
         <li><a href="http://octodex.github.com/">The Octodex</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Documentation</h4>
         <li><a href="http://help.github.com/">GitHub Help</a></li>
         <li><a href="http://developer.github.com/">Developer API</a></li>
         <li><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></li>
         <li><a href="http://pages.github.com/">GitHub Pages</a></li>
       </ul>

     </div><!-- /.site -->
  </div><!-- /.upper_footer -->

<div class="lower_footer">
  <div class="container clearfix">
    <!--[if IE]><div id="legal_ie"><![endif]-->
    <![if !IE]><div id="legal"><![endif]>
      <ul>
          <li><a href="https://github.com/site/terms">Terms of Service</a></li>
          <li><a href="https://github.com/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
      </ul>

      <p>&copy; 2012 <span title="0.23492s from fe18.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    </div><!-- /#legal or /#legal_ie-->

  </div><!-- /.site -->
</div><!-- /.lower_footer -->


      </div><!-- /#footer -->

    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus command bar</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style='display:none'>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last js-hidden-pane" style='display:none'>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
        <dd>Submit comment</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> shift p</dt>
        <dd>Preview comment</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> shift p</dt>
          <dd>Preview comment</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Issues Dashboard</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div class="js-hidden-pane" >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first js-hidden-pane" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>w</dt>
          <dd>Switch branch/tag</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first">
        <h3>Browsing Commits</h3>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>escape</dt>
          <dd>Close form</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>p</dt>
          <dd>Parent commit</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o</dt>
          <dd>Other parent commit</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>
    <h3>Notifications</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open notification</dd>
        </dl>
      </div><!-- /.column.first -->

      <div class="column second">
        <dl class="keyboard-mappings">
          <dt>e <em>or</em> shift i <em>or</em> y</dt>
          <dd>Mark as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift m</dt>
          <dd>Mute thread</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:

> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown" target="_blank">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>


    <div id="ajax-error-message" class="flash flash-error">
      <span class="mini-icon mini-icon-exclamation"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="mini-icon mini-icon-remove-close ajax-error-dismiss"></a>
    </div>

    <div id="logo-popup">
      <h2>Looking for the GitHub logo?</h2>
      <ul>
        <li>
          <h4>GitHub Logo</h4>
          <a href="http://github-media-downloads.s3.amazonaws.com/GitHub_Logos.zip"><img alt="Github_logo" src="https://a248.e.akamai.net/assets.github.com/images/modules/about_page/github_logo.png?1340659560" /></a>
          <a href="http://github-media-downloads.s3.amazonaws.com/GitHub_Logos.zip" class="minibutton download">Download</a>
        </li>
        <li>
          <h4>The Octocat</h4>
          <a href="http://github-media-downloads.s3.amazonaws.com/Octocats.zip"><img alt="Octocat" src="https://a248.e.akamai.net/assets.github.com/images/modules/about_page/octocat.png?1340659560" /></a>
          <a href="http://github-media-downloads.s3.amazonaws.com/Octocats.zip" class="minibutton download">Download</a>
        </li>
      </ul>
    </div>

    
    
    <span id='server_response_time' data-time='0.23684' data-host='fe18'></span>
    
  </body>
</html>

