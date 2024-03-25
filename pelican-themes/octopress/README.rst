Octopress Theme for Pelican
===========================

This is a theme for `Pelican`_ that looks like `Octopress`_ default theme. This
is a fork of `pelican-octopress-theme by Maurizio Sambati`_ which merged all
pending pull requests from that repository and also merged new features from
`pelipress by Jose Jimenez`_.

Changelog
---------

10th Aug 2017

- `PR #1 <https://github.com/MrSenko/pelican-octopress-theme/pull/1>`_
  Add canonical url and OpenGraph metadata (by @Rassilion)

5th Jun 2016

- Add support for ``SITE_KEYWORDS``. Fixes
  `issue #54 <https://github.com/duilio/pelican-octopress-theme/issues/54>`_
- Update CSS style for rst footnote symbols so they appear as superscript text.
  Fixes
  `issue #26 <https://github.com/duilio/pelican-octopress-theme/issues/26>`_

2nd Jun 2016

- Add support for article and page translations. Fixes
  `issue #89 <https://github.com/duilio/pelican-octopress-theme/issues/89>`_

21st May 2016

- Add ``DISPLAY_SOCIAL_ICONS`` setting and the ``social_icons`` sidebar
  inspired by jjimenez/pelipress
- Add ``FOOTER_INCLUDE`` setting inspired by jjimenezlopez/pelipress
- Add ``SHOW_HEADER`` setting from jjimenezlopez/pelipress

18th May 2016

- Merge
  `PR #88 <https://github.com/duilio/pelican-octopress-theme/pull/88>`_ -
  Add header images and background colors. Fixes
  `issue #52 <https://github.com/duilio/pelican-octopress-theme/issue/52>`_
- Merge
  `PR #87 <https://github.com/duilio/pelican-octopress-theme/pull/87>`_ -
  Update documentation. Fixes
  `issue #56 <https://github.com/duilio/pelican-octopress-theme/issue/56>`_
- Merge
  `PR #84 <https://github.com/duilio/pelican-octopress-theme/pull/84>`_ -
  add INDEX_FULL_CONTENT setting
- Merge
  `PR #83 <https://github.com/duilio/pelican-octopress-theme/pull/84>`_ -
  load scripts before plugins that might use them
- Merge
  `PR #82 <https://github.com/duilio/pelican-octopress-theme/pull/82>`_ -
  Add ``disqus_identifier`` article metadata. Fixes
  `issue #81 <https://github.com/duilio/pelican-octopress-theme/issue/81>`_
- Merge
  `PR #76 <https://github.com/duilio/pelican-octopress-theme/pull/76>`_ -
  add support for Mailchimp newsletter registrations
- Merge
  `PR #73 <https://github.com/duilio/pelican-octopress-theme/pull/73>`_ -
  add ``ARCHIVE_TITLE`` setting
- Merge
  `PR #72 <https://github.com/duilio/pelican-octopress-theme/pull/72>`_ -
  add support for Google AdSense in sidebar
- Merge
  `PR #67 <https://github.com/duilio/pelican-octopress-theme/pull/67>`_ -
  improved sidebar control with ``AUTHOR_ABOUT``, ``DISPLAY_CATEGORIES``,
  ``DISPLAY_TAGS`` and ``DISPLAY_FEEDS`` settings. ``SIDEBAR_IMAGE`` is
  only shown when ``AUTHOR_ABOUT`` is set!
- Merge
  `PR #55 <https://github.com/duilio/pelican-octopress-theme/pull/55>`_ -
  add ``SHOW_ARTICLE_NEIGHBORS``, ``SHOW_DISQUS_COMMENT_COUNT``,
  ``ARTICLE_ASIDES``, ``PAGE_ASIDES`` and ``INDEX_ASIDES`` settings
- ``d6c3b15`` - fork from
  `duilio/pelican-octopress-theme <https://github.com/duilio/pelican-octopress-theme/commit/d6c3b15>`_

Commercial support
------------------

`Mr. Senko <http://MrSenko.com>`_ provides commercial support for this and
other open source libraries, should you need it!

Why use this theme?
-------------------

I really like Octopress default theme, I think is enough pretty and very readable. On the other
hand I don't like any of the themes currently available for Pelican. As I'm not able to write a
nice theme from scratch I've just copied the Octopress' one.

Why didn't you use Octopress?
-----------------------------

I've started writing my blog with Octopress but I haven't found a way to easily have a
multi-language blog without hacking more than the time I was planning to spend to setup my blog.
You can argue that the time spent to copy the Octopress' theme is more than adding a
multi-language feature for Octopress.. I'm not sure of that since I've no idea what kind of
changes Octopress required to support multiple language per post.

I've found out that I like more the organization of Pelican: Octopress/Jekyll have a unique
repository you have to fork, so its code is mixed with your blog's data. Pelican instead separates
the two things. Also Pelican is written in Python that I know way better than Ruby.

The theme is missing `XXX`
--------------------------

I've started writing this theme just for my blog and my blog required few template pages and few
features. If you want to add `XXX` please be free to fork this repository and submit a pull request,
I'll be happy to merge it!

Plugins
-------

This theme add a nice section on the sidebar with a list of GitHub repositories of the user.
You can enable it by using these settings:

- ``GITHUB_USER``: (required to enable) your username
- ``GITHUB_REPO_COUNT``: ``5``
- ``GITHUB_SKIP_FORK``: ``False``
- ``GITHUB_SHOW_USER_LINK``: ``False``

This theme also allows sharing via Twitter, Google Plus, and Facebook.  To
enable any of these, use the following settings:

- ``TWITTER_USER``: (required to enable) your username
- ``GOOGLE_PLUS_ID``: (required to enable) your ID
- ``FACEBOOK_LIKE``: (required to enable) ``True``

Extra Twitter options (default values are shown):

- ``TWITTER_WIDGET_ID``: (required to enable feed) ID obtained from `twitter settings <https://twitter.com/settings/widgets>`_
- ``TWITTER_TWEET_BUTTON``: ``False`` show twitter tweet button
- ``TWITTER_FOLLOW_BUTTON``: ``False`` show twitter follow button
- ``TWITTER_TWEET_COUNT``: ``3`` number of latest tweets to show
- ``TWITTER_SHOW_REPLIES``: ``'false'`` whether to list replies among latest tweets
- ``TWITTER_SHOW_FOLLOWER_COUNT``: ``'true'`` show number of followers

Extra google plus options (default values are shown):

- ``GOOGLE_PLUS_ONE``: ``False`` show +1 button
- ``GOOGLE_PLUS_HIDDEN``: ``False`` hide the google plus sidebar link.

Google AdSense Sidebar
----------------------

- ``GOOGLE_ADSENSE_CODE``: JavaScript `snippet <https://support.google.com/adsense/answer/181960>`_ to enable Google AdSense.

Google Analytics
-------------

- ``GOOGLE_ANALYTICS``: "UA-XXXX-YYYY" to activate Google Analytics(classic)
- ``GOOGLE_UNIVERSAL_ANALYTICS``: "UA-XXXX-Y" to activate Google Universal Analytics
- ``GOOGLE_UNIVERSAL_ANALYTICS_COOKIEDOMAIN``: ``'auto'`` optional cookie domain setting for Google Universal Analytics
- ``GOOGLE_ANALYTICS_DISPLAY_FEATURES``: ``True`` to enable `Display Advertiser Features <https://support.google.com/analytics/answer/2444872?hl=en&utm_id=ad>`_. This setting works for both Classic Analytics and Universal Analytics.

Sidebar
-------

- ``DISPLAY_CATEGORIES``: ``True`` show categories
- ``DISPLAY_TAGS``: ``True`` show tags
- ``DISPLAY_FEEDS``: ``True`` show feeds at the top in Social section. If you
  want to display the feeds at the bottom (like jjimenez/pelipress did) set
  this to ``False`` and add a link with name "RSS" and value the relevant URL
  to ``SOCIAL``. The order in which links are defined is the order in which
  they will be displayed!
- ``DISPLAY_SOCIAL_ICONS``: set to ``True`` to display social icon images at
  the top of sidebar. The link name from ``SOCIAL`` matches a FontsAwesome icon
- ``SIDEBAR_IMAGE``: Adds specified image to sidebar. Example value: "images/author_photo.jpg"
- ``SIDEBAR_IMAGE_ALT``: Alternative text for sidebar image
- ``SIDEBAR_IMAGE_WIDTH``: Width of sidebar image
- ``AUTHOR_ABOUT``: ```` the specified ``SIDEBAR_IMAGE`` is only shown if this is filled.
- ``SEARCH_BOX``: set to true to enable site search box
- ``SITESEARCH``: [default: 'http://google.com/search'] search engine to which
  search form should be pointed (optional)

Controlling Asides
------------------

- ``ARTICLE_ASIDES``: a list of asides names, controls which asides and order
  to be displayed on articles. If not set, all available asides will be shown.
- ``PAGE_ASIDES``: just like above, but for pages.
- ``INDEX_ASIDES``: just like above, but for the index page.

Individual settings for article or page is available. Just add an ``asides`` in
the corresponding article or page meta, the value is a list of asides names,
separated by commas.

Check ``templates/_includes/asides/`` to get the list of available asides. The
asides name does not contain ``.html``. Example setting::

    ARTICLE_ASIDES = ['recentpost', 'categories', 'tags', 'recentcomment', 'github']


Header image or background color
--------------------------------

- ``header_cover`` - header background image. Configure as article metadata
- ``HEADER_COVER`` - global header background image setting
- ``header_color`` - header background color. Configure as article metadata
- ``HEADER_COLOR`` - global header background color setting
- ``SHOW_HEADER`` - set this to ``False`` to disable the entire header

Custom footer
-------------

Define ``FOOTER_INCLUDE`` in ``pelicanconf.py`` to insert a custom footer text
instead the default "Powered by Pelican". The value is a template path. You also
need to define the ``EXTRA_TEMPLATES_PATHS`` setting. If your custom footer
template is stored under the content ``PATH`` then Pelican will try to render
it as regular HTML page and will most likely fail. To prevent Pelican from
trying to render your custom footer add it to ``IGNORE_FILES``. Example::

    FOOTER_INCLUDE = 'myfooter.html'
    IGNORE_FILES = [FOOTER_INCLUDE]
    EXTRA_TEMPLATES_PATHS = [os.path.dirname(__file__)]

**WARNING:** avoid using names which duplicate existing templates from the
theme directory, for example ``footer.html``. Due to how Pelican searches the
template directories it will first find the files in the theme directory and you
will not see the desired results!

MailChimp
--------------

Add a `MailChimp <http://mailchimp.com>`_ registration form to the bottom of each article.

- ``MAILCHIMP_FORM_ACTION``: URL to be called when the submit button is pressed, required.
- ``MAILCHIMP_EMAIL_PLACEHOLDER``: placeholder for the email form field, default "email@example.com"
- ``MAILCHIMP_SUBSCRIBE_BUTTON``: text shown on the subscribe button, default "Subscribe"
- ``MAILCHIMP_CALL_TO_ACTION``: call-to-action to be shown above the form, default "Get more posts like this:"

QR Code generation
-------------

- ``QR_CODE``: set to true to enable the qr code generation for articles and pages by browser

FeedBurner integration
----------------------

- ``FEED_FEEDBURNER``: set this to the part of your FeedBurner URL after the ``http://feeds.feedburner.com/`` to set the
  displayed feed URL to your FeedBurner URL. This also disables generation of the RSS and ATOM tags, regardless of whether
  you've set the ``FEED_RSS`` or ``FEED_ATOM`` variables. This way, you can arbitrarily set your generated feed URL while
  presenting your FeedBurner URL to your users.

Disqus comments
---------------

- ``DISQUS_SITENAME``: (required to enable) set this to the short site identifier
  of your Disqus site. Example:
  ``mrsenko``
- ``SHOW_DISQUS_COMMENT_COUNT``: set this to ``True`` to show Disqus comments
  count in article meta paragraph.

Disqus Identifier
-----------------

If you are migrated from wordpress or any CMS to pelican, the disqus identifier is different there. In pelican the disqus identifier is URL of an article. So you will lose Disqus discussion for that article because Disqus identifier for that article is changed. To override the disqus identifier of an article

- ``disqus_identifier``: set this property in your article meta data. Set it to any unique string you want. It won’t be affected by the article URL.

If you choose not to use ``disqus_identifier``, defaults article URL passes to Disqus as identifier.  


Isso self-hosted comments
-------------------------

`Isso`_ is intended to be a Free replacement for systems like Disqus. Because
it is self-hosted, it gives you full control over the comments posted to your
website.

- ``ISSO_SITEURL``: (required to enable) set this to the URL of the server Isso
  is being served from without a trailing slash. Example:
  ``http://example.com``

**NOTE:** comments are displayed only if the article is not a draft and
``SITEURL`` is defined (usually is) and either one of ``DISQUS_SITENAME`` or
``ISSO_SITEURL`` are defined!

Controlling comments
--------------------

By default, comments are enabled for all articles and disabled for pages.
To enable comments for a page, add ``Comments: on`` in page meta.
To disable comments for an article, add ``Comments: off`` in article meta.

X min read
----------

medium.com like "X min read" feature. You need to activate the plugin
``post_stats`` for this to work (default values are shown):

- ``X_MIN_READ``: ``False``

Favicon
-------

- ``FAVICON_FILENAME``: set to path of your favicon. The default is empty in
  which case the template will use the hardcoded address ``favicon.png``.

Main Navigation (menu bar)
--------------------------

- ``DISPLAY_PAGES_ON_MENU``: ``True`` show pages
- ``DISPLAY_CATEGORIES_ON_MENU``: ``True`` show categories
- ``DISPLAY_FEEDS_ON_MENU``: ``True`` show feed icons (on the very right side)
- ``MENUITEMS``: ``()`` show static links (before categories)
- ``MENUITEMS_MIDDLE``: ``()`` show static links (between pages and categories)
  e.g.: ``MENUITEMS_MIDDLE = ( ('link1', '/static/file1.zip'), )``
- ``MENUITEMS_AFTER``: ``()`` show static links (after categories)
  e.g.: ``MENUITEMS_AFTER = ( ('link2', '/static/file2.pdf'), )``

Markup for Social Sharing
-------------------------

In order to specify page title, description, image and other metadata for
customized social sharing (e.g.
`Twitter cards <https://dev.twitter.com/cards/overview>`_), you can add
the following metadata to each post:

- ``title``: The title of the post. This is expected for any post.
- ``description``: A long form description of the post.
- ``social_image``: A path to an image, relative to ``SITEURL``. This image
                    will show up next to the other information in social
                    shares.
- ``twitter_site``: A Twitter handle, e.g. ``@getpelican`` for the owner
                    of the site.
- ``twitter_creator``: A Twitter handle, e.g. ``@getpelican`` for the author
                       of the post.

In addition, you can provide a default post image (instead of setting
``social_image`` in the post metadata), by setting ``SOCIAL_IMAGE`` in your
``pelicanconf``.

These can be used for social sharing on Google+, Twitter, and Facebook as
well as provide more detailed page data for Google Search. In order
to enable in each respective channel, your post metadata needs to specify:

- ``title``: The title of the post. This is expected for any post.

- ``use_schema_org: true``: For Google and Google+ specific meta tags.
- ``use_open_graph: true``: For Facebook specific meta tags.
- ``use_twitter_card: true``: For Twitter specific meta tags.

Archive Title
-------------

- ``ARCHIVE_TITLE``: Custom page title for ``archives.html``. Default is
  ``"Blog Archive"``.

Full Content
------------

Display full post content on the index page.

- ``INDEX_FULL_CONTENT``: ``False``

Neighboring Articles
--------------------

- ``SHOW_ARTICLE_NEIGHBORS``: set this to ``True`` to show "Previous Post" and
  "Next Post" bellow article content in the article pages. The ``neighbors``
  plugin is required for this feature.

HTML Meta Tags
--------------

- ``SITE_KEYWORDS``: set this to a string which will be used in the HTML meta
  tag for keywords.

Contribute
----------

#. Fork `the repository`_ on Github
#. Send a pull request


Authors
-------

- `Maurizio Sambati`_: Initial porting of the theme.
- `Geoffrey Lehée`_: GitHub plugin, some cleaning and some missing standard Pelican features (social plugins and links).
- `Ekin Ertaç`_: Open links in other window, add tags and categories.
- `Jake Vanderplas`_: Work on Twitter, Google plus, Facebook, and Disqus plugins.
- `Nicholas Terwoord`_: Additional fixes for Twitter, Google plus, and site search
- `Mortada Mehyar`_: Display advertising features for Google Analytics
- ... and many others. `Check the contributors`_.


.. _`Pelican`: http://getpelican.com
.. _`Octopress`: http://octopress.org
.. _`my personal blog`: http://blogs.skicelab.com/maurizio/
.. _`the repository`: http://github.com/MrSenko/pelican-octopress-theme
.. _`Maurizio Sambati`: https://github.com/duilio
.. _`Geoffrey Lehée`: https://github.com/socketubs
.. _`Ekin Ertaç`: https://github.com/ekinertac
.. _`Jake Vanderplas`: https://github.com/jakevdp
.. _`Nicholas Terwoord`: https://github.com/nt3rp
.. _`Mortada Mehyar`: https://github.com/mortada
.. _`Check the contributors`: https://github.com/MrSenko/pelican-octopress-theme/graphs/contributors
.. _`Isso`: http://posativ.org/isso/
.. _`pelican-octopress-theme by Maurizio Sambati`: https://github.com/duilio/pelican-octopress-theme
.. _`pelipress by Jose Jimenez`: https://github.com/jjimenezlopez/pelipress
