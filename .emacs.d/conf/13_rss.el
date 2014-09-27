;;; newsticker rss list
(autoload 'w3m-region "w3m" nil t)
(setq newsticker-html-renderer 'w3m-region)
(setq newsticker-url-list
      '(("NHK1" "http://www3.nhk.or.jp/rss/news/cat0.xml")
        ("NHK2" "http://www3.nhk.or.jp/rss/news/cat1.xml")
        ("NHK3" "http://www3.nhk.or.jp/rss/news/cat3.xml")
        ("NHK4" "http://www3.nhk.or.jp/rss/news/cat4.xml")
        ("NHK5" "http://www3.nhk.or.jp/rss/news/cat5.xml")
        ("NHK6" "http://www3.nhk.or.jp/rss/news/cat6.xml")
        ("NHK7" "http://www3.nhk.or.jp/rss/news/cat2.xml")
        
        ("2ch" "http://news020.blog13.fc2.com/?xml")
        
        ("RSS1" "http://www.nikkeibp.co.jp/rss/select.rdf")
        ("RSS2" "http://www.gizmodo.jp/index.xml")
        ("RSS3" "http://wired.jp/feed/")
        ("RSS4" "http://sankei.jp.msn.com/rss/news/politics.xml")
        ("RSS5" "http://feed.japan.cnet.com/rss/index.rdf")
        ("RSS6" "http://gigazine.net/index.php?/news/rss_2.0/")
        ("RSS7" "http://sankei.jp.msn.com/rss/news/economy.xml")
        ("RSS8" "http://blog.livedoor.jp/nwknews/index.rdf")
        ("RSS9" "http://www.100shiki.com/feed")
        ("Google1" "http://news.google.com/news?hl=ja&ned=us&ie=UTF-8&oe=UTF-8&output=rss&topic=y")
        ("Google2" "http://news.google.com/news?hl=ja&ned=us&ie=UTF-8&oe=UTF-8&output=rss&topic=w")
        ("Google3" "http://news.google.com/news?hl=ja&ned=us&ie=UTF-8&oe=UTF-8&output=rss&topic=p")
        ("Google4" "http://news.google.com/news?hl=ja&ned=us&ie=UTF-8&oe=UTF-8&output=rss&topic=b")
        ("Google5" "http://news.google.com/news?hl=ja&ned=us&ie=UTF-8&oe=UTF-8&output=rss&topic=t")
        ("PLOS1" "http://www.plosbiology.org/article/feed")
        ("PLOS2" "http://www.plosgenetics.org/article/feed")
        ("PLOS3" "http://www.plospathogens.org/article/feed")
        ("PLOS4" "http://blogs.plos.org/biologue/feed/")
        ("PLOS5" "http://compbiol.plosjournals.org/perlserv/?request=get-rss&issn=1553-7358&type=new-articles")
        ("Nature1" "http://www.nature.com/ncb/current_issue/rss")
        
        ))

;;; org feed
(setq org-feed-alist
      '(("PLOS CompBio" "http://compbiol.plosjournals.org/perlserv/?request=get-rss&amp;issn=1553-7358&amp;type=new-articles"
         "~/org/rss.org" "PLOS")
        ("NHK" "http://www3.nhk.or.jp/rss/news/cat0.xml"
         "~/org/rss.org" "NHK")
        ))
