//
//  Album.swift
//  AppleMusicMiniPlayer
//
//  Created by Stavros Pachoundakis on 2021-11-23.
//

import Foundation
import SwiftUI


struct AlbumMusic {
    var title: String = ""
    var artist: String = ""
    var type: String = ""
    var artwork: UIImage = UIImage(named: "p10")!
}


struct Album {
    var album_name: String
    var album_author: String
    var album_cover: String
}

var albums = [
    Album(album_name: "Bad Blood", album_author: "Taylor Swift", album_cover: "p2"),
    Album(album_name: "Believer", album_author: "Kurt Hugo Schneider", album_cover: "p3"),
    Album(album_name: "Let Me Love You", album_author: "DJ Snake", album_cover: "p4"),
    Album(album_name: "Shape Of You", album_author: "Ed Sherran", album_cover: "p5"),
    Album(album_name: "Blank Space", album_author: "Taylor Swift", album_cover: "p6"),
    Album(album_name: "Havana", album_author: "Camila Cabello", album_cover: "p7"),
    Album(album_name: "Red", album_author: "Taylor Swift", album_cover: "p8"),
    Album(album_name: "I Like It", album_author: "J Balvin", album_cover: "p9"),
    Album(album_name: "Lover", album_author: "Taylor Swift", album_cover: "p10"),
    Album(album_name: "7/27 Harmony", album_author: "Camila Cabello", album_cover: "p11"),
    Album(album_name: "Joanne", album_author: "Lady Gaga", album_cover: "p12"),
    Album(album_name: "Roar", album_author: "Kay Perry", album_cover: "p13"),
    Album(album_name: "My Church", album_author: "Maren Morris", album_cover: "p14"),
    Album(album_name: "Part Of Me", album_author: "Katy Perry", album_cover: "p15"),
]

struct Menu {
    var name : String
    var id: String
}


var menus = [
    Menu(name: "Playlist", id: "1"),
    Menu(name: "Artists", id: "2"),
    Menu(name: "Albums", id: "3"),
    Menu(name: "Songs", id: "4"),
    Menu(name: "Downloaded Music", id: "5")
]
