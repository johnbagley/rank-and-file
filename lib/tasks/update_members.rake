namespace :update_members do
  task update_bills: :environment do
    Member.all.each do |member|
      member.update(bills_sponsored: (BillsSponsored.new(member.first_name, member.last_name).number_of_bills))
    end
  end

  task update_bills_cosponsored: :environment do
    Member.all.each do |member|
      member.update(bills_cosponsored: (BillsCosponsored.new(member.first_name, member.last_name).number_of_cosponsored_bills))
    end
  end

  task update_amendments: :environment do
    Member.all.each do |member|
      member.update(amendments_sponsored: (AmendmentsSponsored.new(member.first_name, member.last_name).number_of_amendments_sponsored))
    end
  end

  task update_amendments_cosponsored: :environment do
    Member.all.each do |member|
      member.update(amendments_cosponsored: (AmendmentsCosponsored.new(member.first_name, member.last_name).number_of_amendments_cosponsored))
    end
  end

  task :update => [:update_bills, :update_bills_cosponsored, :update_amendments, :update_amendments_cosponsored] do
  end
end
