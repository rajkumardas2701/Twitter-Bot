# frozen_string_literal: true

require_relative '../lib/logic'
require_relative '../lib/twitter_control'
require_relative '../lib/store'
require_relative '../lib/scrapper_subj'
require_relative '../lib/quotes'

# puts 'Hey! Good morning. I will be helping you to control your
# twitter account today! What subject do you want displayed
# on our articles section? Be carefull with the spelling'
# subject = gets.chomp

# puts 'Before I start, just want to remember that if you want to
# stop the execution just press ctrl + c.'

controller = TwitterControl.new
greeter_content = FinalMessage.new
store_content = StoreScrapper.new
scrapper = Scrapper.new('What you should wear in 2020')
quotes = Quotes.new
count_product = 0
count_article = 0

controller.post(greeter_content.weather_logic)
sleep(30)
controller.post('A great day to use one of our amazing products!!')
sleep(10)
controller.post("Please check out this amazing offer:
     #{store_content.product_title(count_product)}")
sleep(3)
controller.post(store_content.product_link(count_product))
count_product += 2
sleep(90)
controller.post("If you like fashion, you will love this
     little article: #{scrapper.get_text(count_article)}.")
sleep(3)
controller.post("You can check the link here:
    #{scrapper.get_link(count_article)}")
count_article += 1
sleep(120)
controller.interactor('lvlvlvchrist2')
sleep(120)
controller.post('If you like to reflect on life, you will like this: ')
sleep(10)
controller.post(quotes.quote + ',' + quotes.author)
sleep(100)
controller.interactor('lvlvlvchrist3')
sleep(30)
controller.post("Please check out this amazing offer:
     #{store_content.product_title(count_product)},
     #{store_content.product_link(count_product)}")
count_product += 2
sleep(250)
controller.post("Need tips on what to wear next?
    Check this amazing article in the next tweet...")
sleep(10)
controller.post("#{scrapper.get_text(count_article)},
                 #{scrapper.get_link(count_article)}")
count_article += 1
sleep(200)
controller.post(greeter_content.weather_logic)
