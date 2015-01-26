function loadFeedControl() {
  var feed = "http://blog.cloudfoundry.org/feed";
  var fg = new GFdynamicFeedControl(feed, "updates");
  var feed2 = "https://groups.google.com/a/cloudfoundry.org/forum/feed/vcap-dev/msgs/atom_v1_0.xml";
  var fg2 = new GFdynamicFeedControl(feed2, "discussions");
  var feed3 = "https://github.com/cloudfoundry/bosh/commits/master.atom";
  var fg3 = new GFdynamicFeedControl(feed3, "commits");
}
google.load("feeds", "1");
google.setOnLoadCallback(loadFeedControl);
