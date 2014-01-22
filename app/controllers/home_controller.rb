class HomeController < ActionController::Base
  def index

    require 'feedzirra'

    @blogfeed = []
    @blogfeed = Feedzirra::Feed.fetch_and_parse("http://blog.cloudfoundry.com/category/engineering/feed/")
    @blogentries = []
    @blogentries = @blogfeed.entries
    @blogentries = @blogentries.sort! {|a,b| b.published <=> a.published}


    @discussionfeed = []
    @discussionfeed = Feedzirra::Feed.fetch_and_parse("https://groups.google.com/a/cloudfoundry.org/forum/feed/bosh-dev/msgs/atom_v1_0.xml")
    @discussionentries = []
    @discussionentries = @discussionfeed.entries
    @discussionentries = @discussionentries.sort! {|a,b| b.published <=> a.published}

    @commitfeed = []
    @commitfeed = Feedzirra::Feed.fetch_and_parse("https://github.com/cloudfoundry/bosh/commits/master.atom")
    @commitentries = []
    @commitentries = @commitfeed.entries
    @commitentries = @commitentries.sort! {|a,b| b.published <=> a.published}

  end
end
