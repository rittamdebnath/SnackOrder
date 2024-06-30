//
//  Homepage.swift
//  SnackOrder
//
//  Created by Rittam Debnath on 6/30/24.
//

import SwiftUI

struct Homepage: View {
    
    @State var selectedCategory = ""
    var body: some View {
        ScrollView{
            VStack(spacing: 24){
                HStack{
                    Text("Order from the best of **snacks**")
                        .font(.largeTitle)
                    
                    Spacer()
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .frame(width: 70, height: 90)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                    
                }
                .padding(24)
                
            }
            // category view
            CategoryListView
            
            // collection view
            
            HStack{
                Text("Choco **Collection**")
                    .font(.system(size: 24))
                
                Spacer()
                
                Image(systemName: "arrow.right")
                
                
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 15)
            
            // Product List
            
            ScrollView(.horizontal, showsIndicators: false)
            {
                HStack{
                    ForEach(productList, id: \.id){ item in
                        ProductCardView(product: item)
                    }
                }
            }
            
            
        }
        
    }
    
    
    // Category List View
    
    var CategoryListView: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(categoryList, id: \.id) { item in
                        Button{
                            selectedCategory = item.title
                        } label: {
                            HStack{
                                if item.title != "All" {
                                    Image(systemName: item.icon)
                                        .foregroundColor(selectedCategory == item.title ? .yellow : .black)
                                }
                                Text(item.title)
                            }
                            .padding(20)
                            .background(selectedCategory == item.title ? .black : .gray.opacity(0.1))
                            .foregroundColor(selectedCategory != item.title ? .black : .white)
                            .clipShape(Capsule())
                            
                        }
                    }
                }
                .padding(.horizontal, 30)
                
            }
        }
    }
}

#Preview {
    Homepage()
}


struct ProductCardView: View {
    
    var product :  Product
    var body: some View {
        ZStack{
            
            VStack(alignment: .leading){
                Text(product.name)
                    .font(.system(size: 36, weight: .semibold))
                Text(product.category)
                    .font(.callout)
                    .padding()
                    .background(.white.opacity(0.5))
                    .clipShape(Capsule())
                
                Spacer()
                HStack{
                    Text("$\(product.price).0")
                        .font(.system(size: 24, weight: .semibold))
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "basket")
                            .imageScale(.large)
                            .frame(width: 90, height: 68)
                            .background(.black)
                            .clipShape(Capsule())
                            .foregroundColor(.white)
                           
                        
                    }
                    
                    
                }
                .padding(.leading)
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 90)
                .background(.white.opacity(0.4))
                .clipShape(Capsule())
                
                
            }
            .padding(30)
            .frame(width: 336, height: 422)
        }
        
        .background(product.color.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 50))
        .padding(.leading, 20)
    }
}
