require 'pry'
class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end

    def name_size
        "#{@name} - #{@size}"
    end

end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000),
    Company.new('Charlie', 239),
    Company.new('Echo', 2839649283749)
]

### Your code below this

def company_string(arr)
    company_stats = []
    arr.each do |company|
        company_stats << company.name_size
    end
    company_stats
end

def total_company_size(arr)
    all_company_size = arr.map{ |company| company.size}
    all_company_size.reduce(:+)
end

def companies_over_100(arr)
    companies_over_100 = []
    companies_over_100 = arr.filter{|company| company.size >= 100}
    companies_over_100 = companies_over_100.map{|company| company.name}
    companies_over_100
end

def find_beta(arr)
    beta = arr.filter{|company| company.name == "Beta"}
    beta[0].name
end

def largest_company(arr)
    largest_company = arr.max{|company|company.size}
    largest_company.name
end

def large_to_small(arr)
    sorted_order = []
    order = arr.sort{|company1, company2| company2.size <=> company1.size}
    order.each{|company| sorted_order << company.name}
    sorted_order
end

a = company_string(companies)
b = total_company_size(companies)
c = companies_over_100(companies)
d = find_beta(companies)
e = largest_company(companies)
f = large_to_small(companies)

binding.pry
0