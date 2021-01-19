//
//  data.swift
//  ios_hw2
//
//  Created by User02 on 2021/1/17.
//

import SwiftUI

struct  weap: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var description: String
    
    
}
let weaps: [weap] = [
    weap(image: "大劍", name: "大劍", description: "要說Monster Hunter最為標誌性的武器，當然立刻想到大劍。大劍能斬擊高點、亦能橫掃作大範圍攻擊，但因為笨重、起手慢、空隙大，對於新手來說可能比較難用。但其儲氣一擊斬下去的快感，往往令不少大劍士愛不釋手。使用大劍能磨練你對魔物動作的「先讀」能力，因落刀斬錯部位都會令傷害大減。大劍擁有相當不俗的防禦能力，嘗試挑戰新魔物或者高難度關卡時，大劍也能讓你安心地摸索"),
    weap(image: "太刀", name: "太刀", description: "太刀集機動性、攻撃力、攻擊範圍於一身，是一非常均衡且「有型」的武器，其連招系統互相貫通，可以在華麗流暢的動作之間作出大量輸出。擁有獨有的「練氣」系統，在使出整套氣刃斬時可以提升攻擊力等級，消耗一整槽練氣更加可以使出新招「氣刃兜割」，一口氣作出巨大傷害。雖然太刀沒有任何防禦手段，但在《Monster Hunter: World》中就加入了一招「看破斬」，可於一瞬間抵受魔物攻擊並同時儲集練氣，兩招新招都使原本已經十分平衡的太刀在攻、防方面都有所提升。"),
    weap(image: "長槍", name: "長槍", description: "長槍乃一支巨形長槍及一巨盾組成，雖然攻擊頻率一般，但極長的槍身讓獵人得以享有頗大的攻擊範圍。在眾多《Monster Hunter》系列的武器當中，長槍都算是最不花巧的一員，連技欠奉而且極為沉重，然而長槍的防禦力屬全遊戲的最高水平，加上近兩代開始加入的防守反撃招數，叫不少老手獵人都愛不釋手。"),
    weap(image: "弓", name: "弓", description: "遠距離武器在《Monster Hunter》系列之中有一定歷史，而最為人所熟知的，就是弓箭，表面上弓的攻擊力似乎不及各種近戰兵器，但由歷代的高手表現所知，弓要爆發起來絕對比近戰武器更為恐怖。今集《Monster Hunter World》中的弓，威力更加比前作有過之而無不及，新增了「蓄力墊步」、「快速射撃」以及「龍之箭」等等新動作，使弓手不再是一味「蓄力>射撃>蓄力>射撃>」地無限循環，反而可以極為機動性地在魔物身旁遊走輸出。")
]




struct Episode {
    var imageEpisode: String
    var nameEpisode: String
    var descriptionEpisode: String
    var url: String
}

let episodes: [Episode] = [
    Episode(imageEpisode: "olay", nameEpisode: "Olay", descriptionEpisode: "体験版 大剣(操竜Ver.) タマミツネ 6‘01“72 greatsword Tamamitsune 大劍 泡狐竜 monster hunter rise", url: "https://www.youtube.com/watch?v=h-M1FYzFlb8"),
    Episode(imageEpisode: "TSC", nameEpisode: "TSC", descriptionEpisode: "【MHRise Demo NS】06'30 Mizutsune Gunlance 泡狐竜 ガンランス", url: "https://www.youtube.com/watch?v=lCQDvtRAbaY"),
    Episode(imageEpisode: "tatsuffy", nameEpisode: "tatsuffy", descriptionEpisode: "【MHRise】タマミツネ ヘビィボウガン ソロ 7分34秒", url: "https://www.youtube.com/watch?v=PdAkebutb04"),
    Episode(imageEpisode: "Po chi", nameEpisode: "Po chi", descriptionEpisode: "【MHRise:β】タマミツネ 操虫棍 ソロ 6'27 / Mizutsune Insect Glaive solo", url: "https://www.youtube.com/watch?v=089dgmZLWLE"),
    Episode(imageEpisode: "ボム", nameEpisode: "ボム", descriptionEpisode: "MHRise体験版 タマミツネ 大剣ソロ 6'39 タマミツネの討伐/Mizutsune GreatSword solo", url: "https://www.youtube.com/watch?v=oQgRUXtUfEc"),
    Episode(imageEpisode: "FakedMoon", nameEpisode: "FakedMoon", descriptionEpisode: "【MHRise】体験版 タマミツネ 太刀 4分22秒", url: "https://www.youtube.com/watch?v=9AgtRk0OMB8")
]


struct data_Previews: PreviewProvider {
    static var previews: some View {
        Text("test")
    }
}
