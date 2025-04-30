//
//  ConservationsView.swift
//  Wilder
//
//  Created by Damian Perez on 2/5/24.
//  Abstract: View displays local conservation centers.
/// IMPORTANT:  Challenge does not allow for submissions based WiFi, disabling Visit Website button. 
//

import SwiftUI

struct ConservationsView: View {
    @State private var selectedRegion = "All"
    private let regions = ["All", "Bay Area", "Southern California"]
    
    //MARK: - Filtered list based on selected region
    private var filteredCenters: [ConservationCenter] {
        switch selectedRegion {
        case "Bay Area":
            return ConservationsData.centers.filter { $0.location.contains("San Francisco") || $0.location.contains("Berkeley") || $0.location.contains("Oakland") || $0.location.contains("Pacifica") || $0.location.contains("Redwood City") || $0.location.contains("Los Altos") }
        case "Southern California":
            return ConservationsData.centers.filter { $0.location.contains("San Diego") || $0.location.contains("Los Angeles") }
        default: // "All"
            return ConservationsData.centers
        }
    }
    
    var body: some View {
        VStack {
            Picker("Region", selection: $selectedRegion) {
                ForEach(regions, id: \.self) { region in
                    Text(region).tag(region)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            ScrollView {
                VStack {
                    ForEach(filteredCenters, id: \.name) { center in
                        ConservationCenterView(conservationCenter: center)
                    }
                }
            }
        }
        .navigationTitle("California Conservations")
    }
}

struct ConservationCenterView: View {
    var conservationCenter: ConservationCenter
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(conservationCenter.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(width: 150, height: 150)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(conservationCenter.name)
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text(conservationCenter.description)
                        .font(.body)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text(conservationCenter.location)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                        .textCase(.uppercase)
                }
                .padding(.leading, 10)
            }
            .padding()
            
            // MARK: - Visit Website Button, Disabled
            Button(action: {
                if let url = URL(string: conservationCenter.website), UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url, options: [:])
                }
            }) {
                Text("Visit Website")
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity)
            }
            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) // Due to SSC constrants, disabled
            .hoverEffect()
            .padding()
        }
        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 32))
        .hoverEffect()
        .padding(10)
    }
}

#Preview {
    NavigationStack {
        ConservationsView()
    }
}
