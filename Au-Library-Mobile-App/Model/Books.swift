//
//  Books.swift
//  Au-Library-Mobile-App
//
//  Created by Win Yu Maung on 16/08/2025.
//
import SwiftUI

struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let isbn: String?
}

let demoBooks: [Book] = [
    Book(title: "กฎหมายเบื้องต้นสำหรับประชาชน (กฎหมายพิเศษ)/  สภาทนายความ", author: "สภาทนายความ", isbn: nil),
    Book(title: "Hello from Korea /  Jeannie J. Park et al.", author: "Jeannie J. Park et al.", isbn: nil),
    Book(title: "Principles of corporate finance /  Haim Levy", author: "Haim Levy", isbn: "0538847417"),
    Book(title: "On Goldman /  Leslie A. Howe", author: "Leslie A. Howe", isbn: "0534576206"),
    Book(title: "สารพัดวิธีรวยด้วย \"ฟรี\" =  Free :  the future of a radical price /  คริส แอนเดอร์สัน", author: "คริส แอนเดอร์สัน", isbn: "9786165150774"),
    Book(title: "Internet world guide to maintaining and updating dynamic web sites /  Jeannie Novak", author: "Jeannie Novak", isbn: "047124273x"),
    Book(title: "คอมพิวเตอร์เบื้องต้น /  พรชัย จิตต์พานิชย์", author: "พรชัย จิตต์พานิชย์", isbn: nil),
    Book(title: "เก้าอี้อธิษฐาน /  เอนิด ไบลตัน", author: "เอนิด ไบลตัน", isbn: "9746020234"),
    Book(title: "Gold and silver embroidery.", author: "", isbn: "0855325887"),
    Book(title: "Barron's TOEFL iBT:  internet-based test /  Pamela J. Sharpe", author: "Pamela J. Sharpe", isbn: "9781506259871"),
    Book(title: "Life assurance practice /  Fred Thornber", author: "Fred Thornber", isbn: "090732343x"),
    Book(title: "พระนางมารีย์หนทางสู่พระเยซูคริสเจ้า /  เกรียงศักดิ์ โกวิทวาณิช และคนอื่นๆ", author: "เกรียงศักดิ์ โกวิทวาณิช และคนอื่นๆ", isbn: "9789749762189"),
    Book(title: "Telephone English :  includes phrase bank, audio CD and role plays / John Hughes", author: "John Hughes", isbn: "9781405082211"),
    Book(title: "รายงานประจำปี 2545 สำนักควบคุมไฟป่า กรมป่าไม้ /  กรมป่าไม้. สำนักควบคุมไฟป่า", author: "กรมป่าไม้. สำนักควบคุมไฟป่า", isbn: nil),
    Book(title: "Small business solutions e-commerce /  Brenda Kienan", author: "Brenda Kienan", isbn: "0735608466"),
    Book(title: "Electrical engineering probability /  Richard H. Williams", author: "Richard H. Williams", isbn: "031479980x"),
    Book(title: "Enriching business ethics.", author: "", isbn: "0306434504"),
    Book(title: "International marketing management /  Subhash C. Jain", author: "Subhash C. Jain", isbn: "0534078249"),
    Book(title: "คู่มือการสร้างแอพพลิเคชันด้วย Delphi 5.0 ฉบับสมบูรณ์ /  สัจจะ จรัสรุ่งรวีวร", author: "สัจจะ จรัสรุ่งรวีวร", isbn: "9748237737"),
    Book(title: "Regulation of broadcasting:  law and policy towards radio, television and cable communications /  Douglas H. Ginsburg", author: "Douglas H. Ginsburg", isbn: "082992017x"),
    Book(title: "Understanding electronic commerce /  David Kosiur", author: "David Kosiur", isbn: "1572315601"),
    Book(title: "คู่มือภาษาอังกฤษแนวใหม่ รายสัปดาห์.", author: "", isbn: nil),
    Book(title: "Master planning for architecture:  theory and practice of designing building complexes as development frameworks /  Keith Billings", author: "Keith Billings", isbn: "0442011059"),
    Book(title: "Vocational education and training plan, 2000-2003 /  Korea Research Institute for Vocational Education & Training", author: "Korea Research Institute for Vocational Education & Training", isbn: "8984362166"),
    Book(title: "Bodhinyana:  a collection of Dhamma talks /  The Venerable Ajahn Chan (Pra Bodhinyana Thera)", author: "The Venerable Ajahn Chan (Pra Bodhinyana Thera)", isbn: nil),
    Book(title: "20th century bookkeeping & accounting /  Paul A. Carlson", author: "Paul A. Carlson", isbn: nil),
    Book(title: "Marketing services directory Thailand 1996.", author: "", isbn: nil),
    Book(title: "มหาราชของการรถไฟ /  การรถไฟแห่งประเทศไทย", author: "การรถไฟแห่งประเทศไทย", isbn: "9748784142"),
    Book(title: "Urban design:  street and square /  Cliff Moughtin", author: "Cliff Moughtin", isbn: "0750642742"),
    Book(title: "Forbidden garden /  Diane Guest", author: "Diane Guest", isbn: "0006470521")
]
