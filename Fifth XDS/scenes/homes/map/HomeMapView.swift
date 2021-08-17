//
//  HomeMapView.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI
import MapKit

struct HomeMapView: View {
    
    //    @ObservedObject var vm:MainHomeScenesViewModel
    
    @StateObject var mapData = MapViewModel()
    // Location Manager....
    @State var locationManager = CLLocationManager()
    @Environment(\.presentationMode) var presentationMode
    @Binding var show:Bool

    var body: some View {
        ZStack{
            
            // MapView...
            MapView()
                // using it as environment object so that it can be used ints subViews....
                .environmentObject(mapData)
                .ignoresSafeArea(.all, edges: .all)
            
            VStack{
                
                VStack(spacing: 0){
                    HStack(spacing:16) {
                        Button(action: {withAnimation{
                            show.toggle()
//                            presentationMode.wrappedValue.dismiss()
                        }}, label: {
                        Image("Frame-4")
                            
                        })
                        
                        HStack{
                            
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            
                            TextField("Search", text: $mapData.searchTxt)
                                .colorScheme(.light)
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Image("pict")
                            .resizable()
                            .frame(width: 32, height: 32)
                        
                    }
                    .padding(.top,20)
                    
                    // Displaying Results...
                    
                    if !mapData.places.isEmpty && mapData.searchTxt != ""{
                        
                        ScrollView{
                            
                            VStack(spacing: 15){
                                
                                ForEach(mapData.places){place in
                                    
                                    Text(place.placemark.name ?? "")
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity,alignment: .leading)
                                        .padding(.leading)
                                        .onTapGesture{
                                            
                                            mapData.selectPlace(place: place)
                                        }
                                    
                                    Divider()
                                }
                            }
                            .padding(.top)
                        }
                        .background(Color.white)
                    }
                }
                .padding()
                
                Spacer()
                
                VStack{
                    
                    Button(action: mapData.focusLocation, label: {
                        
                        Image(systemName: "location.fill")
                            .font(.title2)
                            .padding(10)
                            .background(Color.primary)
                            .clipShape(Circle())
                    })
                    
                    Button(action: mapData.updateMapType, label: {
                        
                        Image(systemName: mapData.mapType == .standard ? "network" : "map")
                            .font(.title2)
                            .padding(10)
                            .background(Color.primary)
                            .clipShape(Circle())
                    })
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                .padding(.bottom,100)
                
            }
            
        }
        .onAppear(perform: {
            
            // Setting Delegate...
            locationManager.delegate = mapData
            locationManager.requestWhenInUseAuthorization()
        })
        // Permission Denied Alert...
        .alert(isPresented: $mapData.permissionDenied, content: {
            
            Alert(title: Text("Permission Denied"), message: Text("Please Enable Permission In App Settings"), dismissButton: .default(Text("Goto Settings"), action: {
                
                // Redireting User To Settings...
                UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
            }))
        })
        .onChange(of: mapData.searchTxt, perform: { value in
            
            // Searching Places...
            
            // You can use your own delay time to avoid Continous Search Request...
            let delay = 0.3
            
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                
                if value == mapData.searchTxt{
                    
                    // Search...
                    self.mapData.searchQuery()
                }
            }
        })
    }
}

struct HomeMapView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMapView(show: .constant(false))//vm: MainHomeScenesViewModel())
    }
}
