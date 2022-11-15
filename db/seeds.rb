# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create categories

@invitation = Category.create(name: "Invitation")
@cupcake_toppers = Category.create(name: "Cupcake Toppers")
@gabble_box_labels = Category.create(name: "Gabble Box Labels")

# Create products

invitations = ["Bugs", "Elsa", "Sherk", "Cruella", "Pinocchio", "Spiderman", "Alphablocks", "Dinosaur"]
cupcake = ["Mickey", "Grinch", "Spiderman", "Mandalorian"]
gabble_box_labels = ["Gaby", "Mario", "Stitch", "Cars"]


def create_invitations(invitations)
  invitations.map do |element|
    invi = Product.create(name: "#{element} Invitation", price: 6.95, 
      description: "This listing is for ONE printable file of the invitation in either JPG or PDF file format. We personalize the invitation with your text, and you print as many of them as needed.
      
      PLEASE NOTE:

      This item is a DIGITAL FILE, sent to your ETSY email.
      You are purchasing a digital file only.
      No physical item will be shipped.
      No printed materials or items are included.
      
      INCLUDED
      Your choice of a 4""x6"" size invitation, or 5""x7"" invitation.
      In either a JPEG file or PDF file.")
    
    invi.category << @invitation

    p invi.image.attach(io: File.open("app/assets/images/seeds/#{element.downcase!}_invitation.webp"), filename: "#{element.downcase!}_invitation.webp", content_type: 'image/webp')
  end
end

def create_cupcake_toppers(cupcake)
  cupcake.map do |element|
    cup = Product.create(name: "#{element} Cupcake Toppers", price: 3.68, 
      description: "These are Cupcake Toppers for your Celebration!

      Surprise everyone with these themed tags or toppers, putting more special details on your decoration and making the occasion more memorable.
      
      SIZE:
      
      The SIZE is 2""x""2"".
      
      PLEASE NOTE:
      
      This item is a PRINTABLE DIGITAL FILE
      You are purchasing a digital file only.
      No physical item will be shipped.
      No printed materials or items are included.
      
      *This is a DIGITAL file. No physical items will be mailed to you*
      
      HOW TO DOWNLOAD
      
      Your PDF file will be available instantly after your payment has gone through.
      After payment, follow the link to your Etsy Download page. (You will find it under Purchases and Reviews)
      
      Please, feel free to contact me if you need help or have any questions.
      
      COLOR VARIATIONS
      
      Please keep in mind, there may be a little variance between the way a color looks on your screen and how it looks when printed!
      
      Printed colors may vary from one computer monitor to another, one printer to another, between different types or brands of paper & ink, and also with the choice of printer settings.
      
      Note: No refunds will be given for printing issues.
      
      RETURNS
      
      *Due to the electronic nature of my items, they are not refundable*
      
      This is a digital download available directly after purchase. Due to the nature of a digital product, it can’t be exchanged or returned after purchase. Please read the product descriptions 
      before purchase or ask us any questions. We do not provide refunds due to change of mind, cancellation of an event.")
    
    cup.category << @cupcake_toppers

    cup.image.attach(io: File.open("app/assets/images/seeds/#{element.downcase!}_cupcakes_toppers.webp"), filename: "#{element.downcase!}_cupcakes_toppers.webp", content_type: 'image/webp')
  end
end

def create_gabble_box_labels(gabble_box_labels)
  gabble_box_labels.map do |element|
    gab = Product.create(name: "#{element} Gabble Box Labels", price: 5.52, 
      description: "This listing is for a Gable Box label. Decorate your Party Favors and make them match the theme of your celebration!
      We only need the name of the child and confirm the size of the box you will use to adjust the measurement to it (only for rectangular boxes).
      
      We can even customize it in another language.
      
      This listing is for a DIGITAL PRINTABLE FILE that you download and print on your own printer. You will NOT get this product in the mail.
      
      PLEASE NOTE:
      
      This item is a DIGITAL PRINTABLE FILE
      You are purchasing a digital file only.
      No physical item will be shipped.
      No printed materials or items are included.")
    
    gab.category << @gabble_box_labels

    gab.image.attach(io: File.open("app/assets/images/seeds/#{element.downcase!}_label_for_the_gable_box.webp"), filename: "#{element.downcase!}_label_for_the_gable_box.webp", content_type: 'image/webp')
  end
end


create_invitations(invitations)

create_cupcake_toppers(cupcake)

create_gabble_box_labels(gabble_box_labels)
