# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Category.any?
  Category.create!([{
                     title: "Osobni",
                     color: "#cd2626"
                 },
                    {
                        title: "Skola",
                        color: "#6f00ff"
                    },
                    {
                        title: "Prace",
                        color: "#ffb90f"
                    }])
end

unless Tag.any?
  Tag.create!([{
                        title: "UCL",
                        color: "#cd2626"
                    },
               {
                   title: "JSE",
                   color: "#6f00ff"
               },
               {
                   title: "WEB",
                   color: "#ffb90f"
               },
               {
                   title: "3DT",
                   color: "#cd2626"
               },
               {
                   title: "PR1",
                   color: "#6f00ff"
               }, {
                   title: "PES",
                   color: "#ffb90f"
               },
               {
                   title: "Nakupy",
                   color: "#cd2626"
               },
               {
                   title: "Wishlist",
                   color: "#6f00ff"
               }])

end

unless Task.any?
  Task.create!([{
                        title: "Toto je jednoduchý úkol",
                        is_done: false
                    },
                {
                    title: "Toto je už dokončený úkol",
                    is_done: true
                },
                {
                    title: "Nakoupit na večeři",
                    is_done: false,
                    category_id: 1,
                    tag_id: 7
                },
                {
                    title: "Udělat semestrální práci z předmětu WEB",
                    is_done: true,
                    category_id: 2,
                    tag_id: [1,3]
                }
               ])
end
