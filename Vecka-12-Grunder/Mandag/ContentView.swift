struct ContentView: View {
    
    let name = "Luna Larson"
    let title = "iOS-utvecklare"
    let age = 28
    
    var body: some View {
        
        VStack(spacing: 12){
            
            Image(systemName: "person.circle.fill")
                .font(.system(size: 80))
                .foregroundStyle(.blue)
            Text(name)
                .font(.title)
                .fontWeight(.bold)
            Text(title)
                .font(.subheadline)
            Text("\(age) år")
                .font(.caption)
                .foregroundStyle(.secondary)
            
            HStack(spacing: 24){
                Image(systemName: "envelope.fill")
                Image(systemName: "phone.fill")
                Image(systemName: "bubble.left.fill")
            }
            .font(.title2)
            .foregroundStyle(.blue)
            
            Button("Kontakta"){
                print("Knappen trycktes på!")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding(40)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(.systemBackground))
                .shadow(radius: 10)
        )
        
        
    }
}

#Preview {
    ContentView()
}