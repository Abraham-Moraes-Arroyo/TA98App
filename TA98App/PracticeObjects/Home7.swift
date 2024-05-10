//
//  Home.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 4/30/24.
//

import SwiftUI
import SceneKit

struct Home7: View {
    @State var scene: SCNScene? = .init(named: "LighterBlue.scn")
    // MARK: View Properties
    @State var isVerticallook: Bool = false
    @State var currentSelection: String = "1"
    @Namespace var animation
    @GestureState var offset: CGFloat = 0
    var body: some View {
        // MARK: 3D PReview
        VStack {
            HeaderView()
            
            // MARK: 3D Preview
            CustomSceneView(scene: $scene)
                .frame(height: 350)
                .padding(.top,-50)
                .padding(.bottom, -15)
                .zIndex(-10)
            
            CustomSeeker()
            
            
            BookPropertiesView()
            
        }
        .padding()

    }
    
    // MARK: Book Properties
    @ViewBuilder
    func BookPropertiesView()-> some View{
        VStack{
            VStack(alignment: .leading, spacing: 12) {
                Text("Chi-Scrapers Lighter Blue")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Text("Marlen Cisneros")
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
//                Label {
//                    Text("5.0")
//                } icon: {
//                    Image(systemName: "Star.fill")
//                }
//                .foregroundColor(Color("Gold"))
                
                
            }
            .padding(.top, 30)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // MARK: Quantity Picker
//            VStack(alignment: .leading, spacing: 12){
//                Text("Choose Quantity")
//                    .font(.title3.bold())
//                ScrollView(.horizontal, showsIndicators: false){
//                    HStack(spacing: 10){
//                        let quantitys = ["1","2","3"]
//                        ForEach(quantitys, id: \.self){ quantity in
//                            Text(quantity)
//                                .fontWeight(.semibold)
//                                .foregroundColor(currentSelection == quantity ? .black : .white)
//                                .padding(.horizontal,20)
//                                .padding(.vertical,15)
//                                .background{
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
//                                            .fill(.white.opacity(0.2))
//
//                                        if currentSelection == quantity {
//                                            RoundedRectangle(cornerRadius: 10, style: .continuous)
//                                                .fill(.white)
//                                                .matchedGeometryEffect(id: "TAB", in: animation)
//                                        }
//                                    }
//                                }
//                                .onTapGesture {
//                                    withAnimation(.easeInOut){
//                                        currentSelection = quantity
//                                    }
//                                }
//                        }
//                    }
//
//                }
//            }
            //MARK: Check out button
            HStack{
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("This photograph is the 7th photograph out of the Chi-Scrapers Collection. ")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                  
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20 )
            }
            
            .padding(.top, 30)
        }
    }
    
    
    // MARK: Custom Seeker
    @ViewBuilder
    func CustomSeeker() -> some View {
        GeometryReader{_ in
            Rectangle()
                .trim(from: 0, to: 0.474)
                .stroke(.linearGradient(colors: [
                    .clear,
                    .clear,
                    .white.opacity(0.2),
                    .white.opacity(0.6),
                    .white,
                    .white.opacity(0.6),
                    .white.opacity(0.2),
                    .clear,
                    .clear
                
                ], startPoint: .leading, endPoint: .trailing), style: StrokeStyle(lineWidth: 2, lineCap: .round,lineJoin: .round, miterLimit: 1,dash: [3],dashPhase: 1))
                .offset(x: offset)
                .overlay {
                    // MARK: Speeker View
                    HStack(spacing: 3){
                        Image(systemName: "arrowtriangle.left.fill")
                            .font(.caption)
                        
                        Image(systemName: "arrowtriangle.right.fill")
                            .font(.caption)
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal,7)
                    .padding(.vertical, 10 )
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.white)
                    }
                    .offset(y: -12) // 6:24
                    .offset(x: offset)
                    .gesture(
                        DragGesture()
                            .updating($offset, body: {value, out, _ in
                                // Reducing the size of the Knob
                                // Assuming the total sie will be 40
                                // So Reducing 40/2 -> 20
                                out = value.location.x - 20
                            })
                    )
                }
        }
        .frame(height: 20)
        .onChange(of: offset, perform: {newvalue in
            rotateObject(animate: offset == .zero)
        })
        .animation(.easeInOut(duration: 0.4), value: offset == .zero)
        
    }
    
    // Mark Rotating 3D
    func rotateObject(animate: Bool = false){
        // Thed rotation is more or liek same as 3D Rotation in swift UI
        // Y wuill be used for the horizonal rotation and viceversa for x.
        
        if animate{
            SCNTransaction.begin()
            SCNTransaction.animationDuration = 0.4
        }
        
        let newAngle = Float((offset * .pi) / 180 )
        // MARK: Now we rotate the new Child Node
        if isVerticallook{
            scene?.rootNode.childNode(withName: "Root", recursively: true )?.eulerAngles.y = newAngle
        } else {
            scene?.rootNode.childNode(withName: "Root", recursively: true )?.eulerAngles.x = newAngle
        }
        if animate {
            SCNTransaction.commit()
        }
        
    }
    
    
    // MARK: Header View
    @ViewBuilder //folded at 4:48
    func HeaderView()->some View{
        HStack{ // I think this is the button that is giving me issues
//            Button{
//
//            } label: {
//                Image(systemName: "arrow.left")
//                    .font(.system(size:16, weight: .heavy))
//                    .foregroundColor(.white)
//                    .frame(width: 42,height: 42)
//                    .background{
//                        RoundedRectangle(cornerRadius: 15, style: .continuous)
//                            .fill(.white.opacity(0.2))
//                    }
//            }
            
            Spacer()
            
            
            Button{ // minute 4:37
                withAnimation(.easeInOut){isVerticallook.toggle()}
            } label: {
                Image(systemName: "arrow.left.and.right.righttriangle.left.righttriangle.right.fill")
                    .font(.system(size:16, weight: .heavy))
                    .foregroundColor(.white)
                    .rotationEffect(.init(degrees: isVerticallook ? 0 : 90))
                    .frame(width: 42,height: 42)
                    .background{
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(.white.opacity(0.2))
                    }
            }
            
        }
    }
    
}

struct Home7_Previews: PreviewProvider {
    static var previews: some View {
        Home7()
    }
}
