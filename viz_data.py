import matplotlib.pyplot as plt

# Data
data = [
    {"year": 2022, "won_matches": "Nicholas Meregali"},
    {"year": 2019, "won_matches": "Gordon Ryan"},
    {"year": 2017, "won_matches": "Marcus Almeida"},
    {"year": 2015, "won_matches": "Rodolfo Vieira"},
    {"year": 2013, "won_matches": "Roberto Abreu"},
    {"year": 2011, "won_matches": "Andre Galvao"},
    {"year": 2009, "won_matches": "Braulio Estima"},
    {"year": 2007, "won_matches": "Marcelo Garcia"},
    {"year": 2005, "won_matches": "Roger Gracie"},
    {"year": 2003, "won_matches": "Fabricio Werdum"},
    {"year": 2001, "won_matches": "Ricardo Arona"},
    {"year": 2000, "won_matches": "Mark Kerr"},
    {"year": 1999, "won_matches": "Roberto Traven"},
    {"year": 1998, "won_matches": "Jose Mario Sperry"}
]

years = [item["year"] for item in data]
winners = [item["won_matches"] for item in data]

# Create a bar chart
plt.figure(figsize=(10, 6))
plt.barh(years, winners)
plt.xlabel('Winners')
plt.ylabel('Years')
plt.title('Winners by Year')