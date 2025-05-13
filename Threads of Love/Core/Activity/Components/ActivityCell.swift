import SwiftUI

struct ActivityCell: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 40, height: 40)
                .foregroundColor(.gray.opacity(0.3))
            VStack(alignment: .leading) {
                Text("User did something")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Just now")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.vertical, 8)
        .padding(.horizontal)
    }
}

struct ActivityCell_Previews: PreviewProvider {
    static var previews: some View {
        ActivityCell()
    }
} 