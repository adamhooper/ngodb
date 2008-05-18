# Based on Redmine's loader

module Ngodb
  module DefaultData
    module Loader
      class DataAlreadyLoaded < Exception; end

      Data = {
        AnnualBudget => [
          { :name => '0 - 5,000,000 Tsh', :name_sw => '0 - 5,000,000 Tsh' },
          { :name => '5,000,001 - 10,000,000 Tsh', :name_sw => '5,000,001 - 10,000,000 Tsh' },
          { :name => '10,000,001 - 50,000,000 Tsh', :name_sw => '10,000,001 - 50,000,000 Tsh' },
          { :name => '50,000,001 - 100,000,000 Tsh', :name_sw => '50,000,001 - 100,000,000 Tsh' },
          { :name => '100,000,001 - 300,000,000 Tsh', :name_sw => '100,000,001 - 300,000,000 Tsh' },
          { :name => '300,000,001 - 500,000,000 Tsh', :name_sw => '300,000,001 - 500,000,000 Tsh' },
          { :name => '1,000,000,000+ Tsh', :name_sw => '1,000,000,000+ Tsh' }
        ],
        FundingSource => [
          { :name => 'Membership Fee', :name_sw => 'Ada ya wanachama' },
          { :name => 'Membership Contribution', :name_sw => 'Viingilio vya uanachama' },
          { :name => 'Grants', :name_sw => 'Ruzuku' }
        ],
        MembershipType => [
          { :name => 'Individual', :name_sw => 'Mtu moja moja' },
          { :name => 'Institution', :name_sw => 'Asasi mbalimbali' },
          { :name => 'Network', :name_sw => 'Aina nyingine' }
        ],
        OperationalArea => [
          { :name => 'Village', :name_sw => 'Kijiji' },
          { :name => 'Region', :name_sw => 'Mkoa' },
          { :name => 'National', :name_sw => 'Kitaifa' },
          { :name => 'Shehia', :name_sw => 'Shehia' },
          { :name => 'Ward', :name_sw => 'Tarafa' },
          { :name => 'Island', :name_sw => 'Visiwa' },
          { :name => 'District', :name_sw => 'Wilaya' },
          { :name => 'International', :name_sw => 'Kimataifa' }
        ],
        RegistrationAct => [
          { :name => 'NGO Act', :name_sw => 'Sheria ya NGOs (NGO Act)' },
          { :name => 'Society Act', :name_sw => 'Sheria ya Vyama ya Kiraia (Society Act)' },
          { :name => 'Companies Act', :name_sw => 'Sheria ya Makampuni (Companies Act)' },
          { :name => 'CBO Registration', :name_sw => 'Usajili wa Vyama vya Kijamii (CBOs Registration)' },
          { :name => 'Employment & Labour Relations Act', :name_sw => 'Sheria ya Vyama vya Wafanyakazi (Employment & Labour Relations Act)' },
          { :name => 'Trustees Incorporation Act', :name_sw => 'Sheria ya Kabidhi Wasii (Trustees Incorporation Act)' }
        ],
        SectorFocus => [
          { :name => 'Advocacy / Lobbying', :name_sw => 'Utetezi na Ushawish' },
          { :name => 'Agriculture & Livestock', :name_sw => 'Kilimo na mifugo' },
          { :name => 'Communications', :name_sw => 'Mawasiliano  na habari' },
          { :name => 'Conflict resolution', :name_sw => 'Usuluhishi' },
          { :name => 'Cooperative', :name_sw => 'Ushirika' },
          { :name => 'Cultural Heritage', :name_sw => 'Udumishaji mila' },
          { :name => 'Education: General', :name_sw => 'Elimu: Kiujumla ' },
          { :name => 'Education: Policy & Advocacy', :name_sw => 'Elimu: Sera na Utetezi' },
          { :name => 'Environment: Policy & Advocacy', :name_sw => 'Mazingira: Utetezi na sera' },
          { :name => 'Environment: Conservation', :name_sw => 'Mazingira: Utunzaji' },
          { :name => 'Health: General', :name_sw => 'Afya: Kiujumla' },
          { :name => 'Health: HIV/AIDS', :name_sw => 'Afya: Ukimwi' },
          { :name => 'Health: Malaria', :name_sw => 'Afya: Malaria' },
          { :name => 'Health: Reproductive', :name_sw => 'Afya: Afya ya uzazi' },
          { :name => 'Health: Maternal & Child', :name_sw => 'Afya: Mama na mtoto' },
          { :name => 'Human Rights', :name_sw => 'Haki za Binadamu' },
          { :name => 'Labour Rights', :name_sw => 'Haki za wafanyakazi' },
          { :name => 'Micro credit', :name_sw => 'Mikopo midogo midogo' },
          { :name => 'Micro enterprise', :name_sw => 'Biashara ndogo ndogo' },
          { :name => 'Natural Resource Management (e.g. water, energy)', :name_sw => 'Uangalizi wa mali asili (mfano maji, nishati)' },
          { :name => 'Professional Training', :name_sw => 'Mafunzo ya kiutaalam' },
          { :name => 'Rural development', :name_sw => 'Maendeleo vijijini' },
          { :name => 'Science & Technology', :name_sw => 'Sayansi na teknolojia' },
          { :name => 'Drugs and alcohol', :name_sw => 'Madawa ya kulevya' },
          { :name => 'Tourism', :name_sw => 'Utalii' },
          { :name => 'Trade', :name_sw => 'Biashara' },
          { :name => 'Vocational Training', :name_sw => 'Mafunzo ya ufundi' }
        ],
        TargetGroup => [
          { :name => 'Children', :name_sw => 'Watoto' },
          { :name => 'Elderly People', :name_sw => 'Wazee' },
          { :name => 'Families', :name_sw => 'Familia' },
          { :name => 'Farmers', :name_sw => 'Wakulima' },
          { :name => 'Fishermen', :name_sw => 'Wavuvi' },
          { :name => 'Employees', :name_sw => 'Wafanyakazi' },
          { :name => 'Business Associations', :name_sw => 'Vyama vya shughuli' },
          { :name => 'Orphans', :name_sw => 'Yatima' },
          { :name => 'People with Disabilities', :name_sw => 'Walemavu' },
          { :name => 'People with HIV/AIDS', :name_sw => 'Waathirika wa Ukimwi' },
          { :name => 'Rural Populations', :name_sw => 'Watu wa vijijini' },
          { :name => 'Widows', :name_sw => 'Wajane' },
          { :name => 'Women', :name_sw => 'Wanawake' },
          { :name => 'Youth', :name_sw => 'Vijana' }
        ]
      }

      class << self
        # Returns true if no data is already in the database
        def no_data?
          Data.keys.find{|klass| !klass.find(:first).nil?}.nil?
        end

        # Loads the default data
        # Raises a RecordNotSaved exception if something goes wrong
        def load
          raise DataAlreadyLoaded.new("Some configuration data was already loaded") unless no_data?

          Data.keys.first.transaction do
            Data.each_pair do |klass, rows|
              rows.each do |row|
                klass.create! row
              end
            end
          end
        end
      end
    end
  end
end
