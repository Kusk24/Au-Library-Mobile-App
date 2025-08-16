//
//  Books.swift
//  Au-Library-Mobile-App
//
//  Created by Win Yu Maung on 16/08/2025.
//
import SwiftUI

struct Book: Identifiable {
    let itemNo: Int
    let author: String
    let title: String
    let edition: String
    let imprint: String
    let date: Int
    let callNo: String
    let ISBN: String?
    
    var id: Int { itemNo }
}


let demoBooks: [Book] = [
    Book(itemNo: 99567, author: "สภาทนายความ", title: "กฎหมายเบื้องต้นสำหรับประชาชน (กฎหมายพิเศษ)/  สภาทนายความ", edition: "พิมพ์ครั้งที่ 1.", imprint: " คณะอนุกรรมการโครงการเผยแพร่ความรู้ทางกฎหมาย,", date: 2538, callNo: "340.02 ส226ก 2538", ISBN: nil),
    Book(itemNo: 213220, author: "Jeannie J. Park et al.", title: "Hello from Korea /  Jeannie J. Park et al.", edition: "2nd ed.", imprint: " Korean Overseas Information Service,", date: 1997, callNo: "951.9 H477 1997", ISBN: nil),
    Book(itemNo: 91903, author: "Haim Levy", title: "Principles of corporate finance /  Haim Levy", edition: "1st ed.", imprint: " South-Western College,", date: 1998, callNo: "658.15 L668p 1998", ISBN: "0538847417"),
    Book(itemNo: 185762, author: "Leslie A. Howe", title: "On Goldman /  Leslie A. Howe", edition: "1st ed.", imprint: " Wadsworth/Thomson Learning,", date: 2000, callNo: "190 H856o 2000", ISBN: "0534576206"),
    Book(itemNo: 2010000220, author: "คริส แอนเดอร์สัน", title: "สารพัดวิธีรวยด้วย \"ฟรี\" =  Free :  the future of a radical price /  คริส แอนเดอร์สัน", edition: "พิมพ์ครั้งที่ 2", imprint: " เนชั่นบุ๊คส์,", date: 2553, callNo: "658.816 อ945ส 2553 ฉ.2", ISBN: "9786165150774"),
    Book(itemNo: 54380, author: "Jeannie Novak", title: "Internet world guide to maintaining and updating dynamic web sites /  Jeannie Novak", edition: "1st ed.", imprint: " J. Wiley,", date: 1998, callNo: "005.376 N935i 1998", ISBN: "047124273x"),
    Book(itemNo: 35645, author: "พรชัย จิตต์พานิชย์", title: "คอมพิวเตอร์เบื้องต้น /  พรชัย จิตต์พานิชย์", edition: "พิมพ์ครั้งที่ 1", imprint: " คุณพินอักษรกิจ,", date: 2527, callNo: "001.64 พ72ค 2527", ISBN: nil),
    Book(itemNo: 155387, author: "เอนิด ไบลตัน", title: "เก้าอี้อธิษฐาน /  เอนิด ไบลตัน", edition: "พิมพ์ครั้งที่ 1.", imprint: " ดอกหญ้า,", date: 2536, callNo: "ย บ974ก 2536", ISBN: "9746020234"),
    Book(itemNo: 99900, author: "", title: "Gold and silver embroidery.", edition: "1st ed.", imprint: " Search,", date: 1988, callNo: "746.44028 G618 1988", ISBN: "0855325887"),
    Book(itemNo: 1150000466, author: "Pamela J. Sharpe", title: "Barron's TOEFL iBT:  internet-based test /  Pamela J. Sharpe", edition: "16th ed.", imprint: "Barron’s,", date: 2019, callNo: "428.24076 S532b 2019", ISBN: "9781506259871"),
    Book(itemNo: 25841, author: "Fred Thornber", title: "Life assurance practice /  Fred Thornber", edition: "1st ed.", imprint: " The CII Tuition Service,", date: 1981, callNo: "368.32 T497l 1981 c.2", ISBN: "090732343x"),
    Book(itemNo: 321298, author: "เกรียงศักดิ์ โกวิทวาณิช และคนอื่นๆ", title: "พระนางมารีย์หนทางสู่พระเยซูคริสเจ้า /  เกรียงศักดิ์ โกวิทวาณิช และคนอื่นๆ", edition: "พิมพ์ครั้งที่ 1.", imprint: " วิทยาลัยแสงธรรม,", date: 2550, callNo: "232.91 พ341 2550 ฉ.2", ISBN: "9789749762189"),
    Book(itemNo: 1150000012, author: "John Hughes", title: "Telephone English :  includes phrase bank, audio CD and role plays / John Hughes", edition: "1st ed.", imprint: "Macmillan, ", date: 2006, callNo: "428.34 H893t 2006 c.3", ISBN: "9781405082211"),
    Book(itemNo: 186398, author: "กรมป่าไม้. สำนักควบคุมไฟป่า", title: "รายงานประจำปี 2545 สำนักควบคุมไฟป่า กรมป่าไม้ /  กรมป่าไม้. สำนักควบคุมไฟป่า", edition: "พิมพ์ครั้งที่ 1.", imprint: " สำนักควบคุมไฟป่า,", date: 2545, callNo: "อ 333.75 ก169ร 2545", ISBN: nil),
    Book(itemNo: 177876, author: "Brenda Kienan", title: "Small business solutions e-commerce /  Brenda Kienan", edition: "1st ed.", imprint: " Microsoft Pr.,", date: 2000, callNo: "658.84 K47s 2000", ISBN: "0735608466"),
    Book(itemNo: 22182, author: "Richard H. Williams", title: "Electrical engineering probability /  Richard H. Williams", edition: "1st ed.", imprint: " West,", date: 1991, callNo: "621.30151 W728e 1991", ISBN: "031479980x"),
    Book(itemNo: 11498, author: "", title: "Enriching business ethics.", edition: "1st ed.", imprint: " Plenum Pr.", date: 1990, callNo: "174.4 E59 1990", ISBN: "0306434504"),
    Book(itemNo: 91905, author: "Subhash C. Jain", title: "International marketing management /  Subhash C. Jain", edition: "2nd ed.", imprint: " PWS-Kent,", date: 1987, callNo: "658.848 J25i 1987 c.2", ISBN: "0534078249"),
    Book(itemNo: 181317, author: "สัจจะ จรัสรุ่งรวีวร", title: "คู่มือการสร้างแอพพลิเคชันด้วย Delphi 5.0 ฉบับสมบูรณ์ /  สัจจะ จรัสรุ่งรวีวร", edition: "พิมพ์ครั้งที่ 2", imprint: " อินโฟเพรส,", date: 2543, callNo: "005.265 ส548ค 2543", ISBN: "9748237737"),
    Book(itemNo: 55082, author: "Douglas H. Ginsburg", title: "Regulation of broadcasting:  law and policy towards radio, television and cable communications /  Douglas H. Ginsburg", edition: "1st ed.", imprint: " West,", date: 1979, callNo: "343.730994 G493r 1979", ISBN: "082992017x"),
    Book(itemNo: 204118, author: "David Kosiur", title: "Understanding electronic commerce /  David Kosiur", edition: "1st ed.", imprint: " Microsoft Pr.,", date: 1997, callNo: "658.800285 K86u 1997 c.2", ISBN: "1572315601"),
    Book(itemNo: 239566, author: "", title: "คู่มือภาษาอังกฤษแนวใหม่ รายสัปดาห์.", edition: "พิมพ์ครั้งที่ 1.", imprint: " ธนาชัยแอนด์ เอ็นพีจีกรุ๊ป,", date: 2537, callNo: "428.3495911 ค695 2537 ฉ.50", ISBN: nil),
    Book(itemNo: 91388, author: "Keith Billings", title: "Master planning for architecture:  theory and practice of designing building complexes as development frameworks /  Keith Billings", edition: "1st ed.", imprint: " Van Nostrand Reinhold,", date: 1993, callNo: "720.28 B598m 1993", ISBN: "0442011059"),
    Book(itemNo: 301761, author: "Korea Research Institute for Vocational Education & Training", title: "Vocational education and training plan, 2000-2003 /  Korea Research Institute for Vocational Education & Training", edition: "1st ed.", imprint: " KRIVET,", date: 2000, callNo: "370.11309519 V872 2000", ISBN: "8984362166"),
    Book(itemNo: 238157, author: "The Venerable Ajahn Chan (Pra Bodhinyana Thera)", title: "Bodhinyana:  a collection of Dhamma talks /  The Venerable Ajahn Chan (Pra Bodhinyana Thera)", edition: "1st ed.", imprint: " Wat Pah Pong,", date: 1982, callNo: "294.34 V456b 1982", ISBN: nil),
    Book(itemNo: 73597, author: "Paul A. Carlson", title: "20th century bookkeeping & accounting /  Paul A. Carlson", edition: "22nd ed.", imprint: " South-Western,", date: 1962, callNo: "657.2 C284t 1962 c.3", ISBN: nil),
    Book(itemNo: 108983, author: "", title: "Marketing services directory Thailand 1996.", edition: "1st ed.", imprint: " Adarco", date: 1996, callNo: "R 658.8025593 M345 1996", ISBN: nil),
    Book(itemNo: 305812, author: "การรถไฟแห่งประเทศไทย", title: "มหาราชของการรถไฟ /  การรถไฟแห่งประเทศไทย", edition: "พิมพ์ครั้งที่ 1.", imprint: " การรถไฟแห่งประเทศไทย,", date: 2543, callNo: "923.1593 ม244 2543", ISBN: "9748784142"),
    Book(itemNo: 223751, author: "Cliff Moughtin", title: "Urban design:  street and square /  Cliff Moughtin", edition: "2nd ed.", imprint: " Architectural Pr.,", date: 1999, callNo: "711.4 M925u 1999", ISBN: "0750642742"),
    Book(itemNo: 106120, author: "Diane Guest", title: "Forbidden garden /  Diane Guest", edition: "1st ed.", imprint: " Fontana,", date: 1992, callNo: "F G936f 1992", ISBN: "0006470521")
]
