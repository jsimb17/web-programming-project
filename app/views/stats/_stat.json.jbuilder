json.extract! stat, :id, :playername, :team, :position, :goals, :assists, :points, :penaltymin, :shots, :created_at, :updated_at
json.url stat_url(stat, format: :json)
