{config_load file='theme.conf' scope='global'}
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Libre.fm</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

<!--

    Dear Mr McGee,

    Please find enclosed the latest demo from Liquid Greek.

    Derided by the mainstream as ‘shoegazing also-rans’, the band
    have nevertheless persevered with their off-kilter-or-nothing
    policy in the hope that someone like your good self will
    eventually realise, and thus promote, this violent yet
    ultimately beautiful genre which we have dubbed ‘new noise’.

    The first track is based upon the high-pitched lamentations of
    an unbalanced Lincoln woman, who nurses injured buzzards back
    to health inside her dead child’s wardrobe.

    We hope you like it.

    Yours sincerely,

    Liquid Greek

    P.S. – We don’t like sport of any kind, and friends at school
    were very much thin on the ground

    -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="/themes/2024-end-times/assets/css/lineicons.css" />
    <link rel="stylesheet" href="/themes/2024-end-times/assets/css/main.css" />
	<link rel="stylesheet" href="/themes/2024-end-times/assets/css/librefm.css" />
  </head>
  <body>

    <a href="#hero" class="a11y-helper" tabindex="0">Skip to main content</a>

    <!-- ======== header start ======== -->
    <header class="header">
      <div class="navbar-area">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-12">
              <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand" href="/">
                  <img src="/themes/2024-end-times/assets/img/logo/logo.svg" alt="Libre.fm" />
                </a>
                <button
                  class="navbar-toggler"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#navbarSupportedContent"
                  aria-controls="navbarSupportedContent"
                  aria-expanded="false"
                  aria-label="Toggle navigation"
                >
                  <span class="toggler-icon"></span>
                  <span class="toggler-icon"></span>
                  <span class="toggler-icon"></span>
                </button>

                <div
                  class="collapse navbar-collapse sub-menu-bar"
                  id="navbarSupportedContent"
                >
                  <ul id="nav" class="navbar-nav ms-auto">
                    <li class="nav-item">
                      <a class="page-scroll active" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="page-scroll" href="/#how">How it works</a>
                    </li>
                    <li class="nav-item">
                      <a class="page-scroll" href="/#features">Features</a>
                    </li>

                    <li class="nav-item">
                      <a class="page-scroll" href="https://libre.fm/login.php">Login</a>
                    </li>
                    <li class="nav-item">
                      <a class="page-scroll" href="https://libre.fm/waitlist.php">Register</a>
                    </li>
                  </ul>
                </div>
                <!-- navbar collapse -->
              </nav>
              <!-- navbar -->
            </div>
          </div>
          <!-- row -->
        </div>
        <!-- container -->
      </div>
      <!-- navbar area -->
    </header>
    <!-- ======== header end ======== -->

    <!-- ======== hero-section start ======== -->
    <section id="home" class="hero-section">
      <div class="container">
        <div class="row align-items-center position-relative">
          <div class="col-lg-6">
            <div class="hero-content">
              <h1>
                Track your listening habits, discover new music
              </h1>
              <p>
                Since 2009, {$totals} We think that's something to be proud of.
              </p>


            </div>
          </div>
          <div class="col-lg-6">
            <div class="hero-img">
              <img src="/themes/2024-end-times/scrobble.png" style="max-width: 800px;" alt="" />
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ======== hero-section end ======== -->

    <!-- ======== feature-section start ======== -->
    <section id="how" class="feature-section pt-120">
      <div class="container">
        <div class="row justify-content-center">
                <h2 class="text-center">
          How it works
        </h2>
        </div>
        <div class="row justify-content-center">
          <div class="col-lg-4 col-md-8 col-sm-10">
            <div class="single-feature">
              <div class="icon">
				      <i class="lni lni-headphone"></i>
              </div>
              <div class="content">
                <h3>Listen to your music</h3>
                <p>
                  Many music player apps already support Libre.fm, and for streaming music there's Web Scrobbler
                </p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-8 col-sm-10">
            <div class="single-feature">
              <div class="icon">
                <i class="lni lni-php"></i>
              </div>
              <div class="content">
                <h3>Free &amp; Open</h3>
                <p>
                  Your device reports what you're listening to. Libre.fm is 100% open source/free software so you can use our server, or run your own FM server (PHP, PostgreSQL)
                </p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-8 col-sm-10">
            <div class="single-feature">
              <div class="icon">
                <i class="lni lni-creative-commons"></i>
              </div>
              <div class="content">
                <h3>Discover new music</h3>
                <p>
                  Libre.fm started out promoting freely licensed music and all data is freely licensed for humans (but not scrapers).
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ======== feature-section end ======== -->



    <!-- ======== feature-section start ======== -->
    <section id="features" class="feature-extended-section pt-100">
      <div class="feature-extended-wrapper">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-xxl-10 col-xl-10 col-lg-10 col-md-9">
              <div class="section-title text-center mb-60">
                <h2 class="mb-25">
                  Why use Libre.fm over something else?
                </h2>
                <p>
                  Over 380,000 users have submitted over 320,000,000 songs to Libre.fm over the last 16 years.
                </p>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-shield"></i>
                </div>
                <div class="content">
                  <h3>Humans only</h3>
                  <p>
                    We block so-called AI scrapers and bots and provide Libre.fm for humans only. We block IP addresses, entire networks, bots and more using Cloudflare and our own in-house data. If you're having any issues, please contact us and we will help you.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-cloud"></i>
                </div>
                <div class="content">
                  <h3>Hosted in the UK</h3>
                  <p>
                    Libre.fm is generously hosted in York, UK by our good friends at <a href="https://www.bytemark.co.uk/company/sponsorships/">Bytemark</a>, a hosting company with a long-standing commitment to a free and open society.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-user"></i>
                </div>
                <div class="content">
                  <h3>Human support</h3>
                  <p>
                    When you <a href="mailto:support@libre.fm">email us for support</a>, you're speaking to <a href="https://mat.tl">Matt Lee</a>, the co-founder of Libre.fm. Matt cares deeply about the indieweb, accessibility, standards and free/open software.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-javascript"></i>
                </div>
                <div class="content">
                  <h3>Minimal JavaScript</h3>
                  <p>
                    Libre.fm is designed to work without JavaScript. This means the site is faster to load and has no invasive trackers. We support any and all operating systems. If you can GET and POST, you're in.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-layers"></i>
                </div>
                <div class="content">
                  <h3>Essential Features Only</h3>
                  <p>
                    Lots of sites are bogged down with unwanted features, aggressive advertising and trackers. We aren't. We spun off the social networking aspects of Libre.fm a long time ago (as <a href="https://en.wikipedia.org/wiki/GNU_social#GNU_social">GNU social</a>) which became a founding part of the <a href="https://socialwebfoundation.org/">modern social web</a>.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-rocket"></i>
                </div>
                <div class="content">
                  <h3>Optimized for speed</h3>
                  <p>
                    Libre.fm caches as much as possible to give you the fastest experience no matter where you are.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ======== feature-section end ======== -->

    <!-- ======== subscribe-section start ======== -->
    <section id="contact" class="subscribe-section pt-120">
      <div class="container">
        <div class="subscribe-wrapper img-bg">
          <div class="row align-items-center">
            <div class="col-xl-7 col-lg-6">
              <div class="section-title mb-15">
                <h2 class="text-white mb-25">Join the waitlist</h2>
                <p class="text-white pr-5">
                  We're slowly adding new users who <a href="/waitlist.php">join the waitlist</a> for an account. <a href="/donate.php">Donors</a> can get an account even quicker. Developers, <a href="mailto:support@libre.fm">reach out to us</a> and we'll get you going.
                </p>
              </div>
            </div>
            <div class="col-xl-5 col-lg-5 text-center">

                <a href="https://libre.fm/waitlist.php" class="main-btn btn-hover">
                  Register now
              </a>
              <a href="https://libre.fm/donate.php" class="main-btn btn-success">
                Donate
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ======== subscribe-section end ======== -->

    <!-- ======== footer start ======== -->
    <footer class="footer">
      <div class="container">
        <div class="widget-wrapper">
          <div class="row">
            <div class="col-xl-4 col-lg-4 col-md-6">
              <div class="footer-widget">
                <div class="logo mb-30">
                  <a href="index.html">
                    <img src="/themes/2024-end-times/assets/img/logo/logo.svg" alt="Libre.fm" />
                  </a>
                </div>
                <p class="desc mb-30 text-white">
                  Since 2009. Made with love in New England. Libre.fm is supported by <a href="https://www.bytemark.co.uk/company/sponsorships/">Bytemark</a>, <a href="https://corehost.us/">Corehost</a> and <a href="https://archive.org/">The Internet Archive</a>. With thanks to <a href="https://musicbrainz.org/">MusicBrainz</a>, <a href="https://themewagon.com">ThemeWagon</a>, <a href="https://crowdsec.net">Crowdsec</a>, <a href="https://coverartarchive.org/">Cover Art Archive</a> and our <a href="/donate.php">donors</a>.
                </p>

              </div>
            </div>

            <div class="col-xl-2 col-lg-2 col-md-6">
              <div class="footer-widget">
                <h3>About Us</h3>
                <ul class="links">
                  <li><a href="/">Home</a></li>
                  <li><a href="/#features">Features</a></li>
                  <li><a href="/#how">About</a></li>
                  <li><a href="mailto:support@libre.fm">support@libre.fm</a></li>
                </ul>
              </div>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-6">
              <div class="footer-widget">
                <h3>Important stuff</h3>
                <ul class="links">
                  <li><a href="https://status.libre.fm/">Server status</a></li>
                  <li><a href="/privacy">Privacy policy</a></li>
                  <li><a href="/terms">Terms of service</a></li>
                  <li><a href="https://nofuckingai.com">AI policy (LOL)</a></li>
                </ul>
              </div>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-6">
              <div class="footer-widget">
                <h3>Our friends</h3>
                <ul class="links">
                  <li><a href="https://alexandragallant.itch.io/">Buy comics and zines</a></li>
                  <li><a href="https://bugsrock.online/">Buy candles</a></li>
                  <li><a href="https://tedium.co/">Tedium</a></li>
                  <li><a href="https://1800www.com">1800www.com</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
  </body>
</html>
