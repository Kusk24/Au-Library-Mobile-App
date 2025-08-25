import SwiftUI

struct Home: View {
    var body: some View {
        
        VStack(spacing: 16){
            TopBar(title: "Home", cart: cart, favorite: favorite)
            SearchBar(placeholder:"Search by title, author, or category")
            
            Text("Categories").font(.system(size: 20, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                .padding(.top, 16)
            
            Text("Borrowed").font(.system(size: 20, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                .padding(.top, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0..<10) { bookIndex in
                        BorrowedBooksCard(bookNumber: bookIndex+1)
                    }
                }
            }.padding(.horizontal, 5)
        }
        Spacer()
        .padding(.horizontal, 2)
        .padding(.top, 5)
        .background(Color(.systemBackground))
    }
}

struct TopBar: View {
    
    let title: String
    let cart: () -> Void
    let favorite: () -> Void
    
    var body: some View {
        HStack(alignment: .center){
            Text(title)
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.red)
                .lineLimit(1)
            
            Spacer()
            
            HStack(spacing: 16) {
                Button(action: cart) {
                    Image(systemName: "cart")
                        .foregroundColor(.primary)
                        .font(.system(size: 18, weight: .semibold))
                        .padding(8)
                }
                
                Button(action: favorite) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.primary)

                        .font(.system(size: 18, weight: .semibold))
                        .padding(8)
                }
            }
        }
        
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .overlay(Divider(), alignment: .top)
    }
}

struct SearchBar: View {
    
    var placeholder: String
    
    var body: some View {
        
        HStack(spacing: 20){
            Image(systemName: "magnifyingglass")
            Text(placeholder)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.secondary)
                .italic()

        }
        .padding(.horizontal, 35)
        .padding(.vertical, 12)
        .background(
            RoundedRectangle(
                cornerRadius: 5,
                style: .circular)
            .fill(Color(.white))
        )
        .overlay(
            RoundedRectangle(
                cornerRadius: 5,
                style: .circular)
            .stroke(Color.secondary.opacity(0.35), lineWidth: 1))
        .shadow(color: .black.opacity(0.03), radius: 4, y: 2)
    }
}

struct BorrowedBooksCard: View {
    let bookNumber: Int
    @State private var isPressed = false
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.blue)
                    .frame(width: 140, height: 200)
                    .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
                
                VStack(spacing: 8) {
                    Image(systemName: "book.closed")
                        .font(.system(size: 32, weight: .light))
                        .foregroundColor(.white.opacity(0.9))
                    
                    Text("Book \(bookNumber)")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Amazing Title \(bookNumber)")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.primary)
                    .lineLimit(2)
                
                Text("Author Name")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                
                HStack {
                    HStack(spacing: 2) {
                        ForEach(0..<5) { star in
                            Image(systemName: star < 4 ? "star.fill" : "star")
                                .font(.system(size: 10))
                                .foregroundColor(.yellow)
                        }
                    }
                    
                    Spacer()
                    
                    Text("4.5")
                        .font(.system(size: 11, weight: .medium))
                        .foregroundColor(.secondary)
                }
            }
            .padding(.top, 12)
            .frame(width: 140, alignment: .leading)
        }
        .scaleEffect(isPressed ? 0.95 : 1.0)
        .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isPressed)
        .onTapGesture {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) {
                isPressed = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) {
                    isPressed = false
                }
            }
        }
    }}

//struct Categories: View{
//    var body: some View{
//        
//    }
//}

func cart(){ /*Cart Place In Here*/ }

func favorite(){ /*Favorite Place Here*/  }

#Preview {
    Home()
}

