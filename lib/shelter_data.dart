class DogInfo {
  final String id;
  final String name;
  final String breed;
  final String sex;
  final String weight;
  final String age;
  final String location;
  final String adoptionFee;
  final String intakeDate;
  final List<String> attributes;
  final String description;
  final List<String> photos;

  DogInfo({
    required this.id,
    required this.name,
    required this.breed,
    required this.sex,
    required this.weight,
    required this.age,
    required this.location,
    required this.adoptionFee,
    required this.intakeDate,
    required this.attributes,
    required this.description,
    required this.photos,
  });
}

List<DogInfo> likedDogs = [];
List<DogInfo> nopedDogs = [];


List<DogInfo> dogs = [
  DogInfo(
    id: "PPR-A-22868",
    name: "Sadie Mae",
    breed: "Hound / Mix",
    sex: "Female",
    weight: "44.2 lbs",
    age: "2Y/7M/1W",
    location: "City of Industry, Kennel #11 (2 large dogs or 4 small dogs)",
    adoptionFee: "\$275",
    intakeDate: "5/3/2023",
    attributes: [
      'Good with Dogs',
      'Older Children Home Preferred',
      'Social Butterfly!',
    ],
    description: "Sadie Mae is a total sweetheart with a heart of gold. She has the perfect temperament and adores her people. She loves to cuddle and is very affectionate. "
                 "Sadie Mae came into our care all the way from Maui Humane Society. We don't know what she went through while in Hawaii, but she for some reason isn't a fan of "
                 "children and may have had a rough history with them. Sadie Mae does well with most dogs and loves to play. She has not been tested with cats yet. "
                 "If you think she can be your newest addition, please stop in to meet her or submit an application today!",
    photos: ["https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/01/21/20230701210317.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/01/21/20230701210122.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/01/21/20230701210231.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/10/24/10/20231024101821.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/10/24/10/20231024101832.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/10/24/10/20231024101846.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/11/07/12/20231107122543.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/11/07/12/20231107122556.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/10/19/20231210194702.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/19/15/20240119154533.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/13/20240228130911.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/04/19/10/20240419102021.png"],
  ),
  DogInfo(
    id: "PPR-A-23024",
    name: "Oso",
    breed: "Retriever, Black Labrador / Mix",
    sex: "Male",
    weight: "82 lbs",
    age: "2Y/5M/2W",
    location: "City of Industry, Kennel #6 (2 large dogs or 4 small dogs)",
    adoptionFee: "\$275",
    intakeDate: "5/25/2023",
    attributes: [
      'High Energy',
      'Needs Training',
      'Single Dog Home',
      'Social Butterfly!',
    ],
    description: "Meet Oso, the giant ball of love and energy, with a heart as big as his paw prints! This exuberant pup, both in heart and body, found his way to Priceless Pets "
        "through Costa Mesa Animal Control, where he was surrendered by his previous owner due to a move. Despite the change in his life, Oso remains a cheerful and affectionate "
        "companion ready to embark on new adventures.\n\nOso is not just your average canine; he's a fan of long walks and playtime in the yard, especially when toys are involved. "
        "His love for attention from volunteers is evident, and he revels in the joy of pets and scratches. Given his size and high energy, Oso would thrive in a home with older "
        "children who can match his enthusiasm.\n\nWhile Oso might get a bit distracted by other dogs, his friendly nature shines through, and he doesn't display aggression towards "
        "his fellow furry friends. Our dedicated Priceless Pets Volunteers have nothing but praise for this gentle giant:\n\n\"Oso is a sweetheart! He loves cuddles and his walks "
        "and will do amazing with continued training. Oso wants to make you happy! He responds very well to praise and so wants to be the goodest boi for his human.\"\n\n\"OSO is "
        "a love bug. He just wants to be hugged and cuddled. He is a pretty good walker now and, with consistency, he will be the bestest companion.\"\n\n\"Oso was such a sweet boy "
        "today! I played in the yard with him today, and he was hiding the toy turtle like it was his baby. He was laying next to me to get belly rubs and lots of pets. Overall, "
        "he is just a big baby, and I hope he gets adopted soon!\"\n\nOso is already neutered, microchipped, and up-to-date on vaccinations. Don't miss the chance to meet this "
        "lovable giant-swing by and make Oso a cherished part of your family today!",
    photos: ["https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/29/11/20240229112547.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/05/25/11/20230525112935.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/05/25/15/20230525155534.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/06/22/03/20230622035825.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/06/22/03/20230622035833.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/06/22/03/20230622035841.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/03/19/20230703193315.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/03/19/20230703193331.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/10/17/20230710170056.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/09/10/11/20230910113334.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/09/28/12/20230928125830.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/10/13/19/20231013194436.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/10/13/19/20231013194512.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/11/06/19/20231106193033.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/03/17/20240103172018.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/03/17/20240103172318.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/10/18/20240110184116.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/17/15/20240117152821.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/17/15/20240117152831.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/24/13/20240224130630.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/29/11/20240229112522.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/29/11/20240229112534.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/29/11/20240229112620.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/03/13/20/20240313204101.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/04/19/10/20240419101156.png"],
  ),
  DogInfo(
    id: "PPR-A-22611",
    name: "Tino",
    breed: "Maltese / Mix",
    sex: "Male",
    weight: "12 lbs",
    age: "6Y/0M/2W",
    location: "Foster Home",
    adoptionFee: "\$275",
    intakeDate: "6/6/2023",
    attributes: [
      'Special Needs',
      'Good with Small Dogs',
      'Lap Dog!',
      'Needs Time to Adjust',
      'Social Butterfly!',
    ],
    description: "Meet Tino, a remarkable and resilient disabled dog in search of his forever home. Despite a spinal injury that has left his back legs paralyzed, Tino's spirit "
        "is unwavering. Whether he's zooming around in his wheelchair or scooting playfully, he never lets his challenges dampen his enthusiasm for life.\n\nThis sweet boy is "
        "slowly learning to trust and love, finding comfort in being cradled like a baby or resting gently on your chest. Tino is accustomed to the company of other dogs and even "
        "a cat, making him a great companion for multi-pet households.\n\nIn his quest for the perfect home, Tino would thrive with someone who is often present, as he requires "
        "regular care and cannot be left alone for extended periods. He wears a diaper for bathroom needs, so a home with tile floors is ideal to prevent sores and promote his "
        "mobility.\n\nTino isn't a fan of crates, preferring the freedom to move around and explore his surroundings. Recently, he's begun acupuncture treatments and has shown "
        "signs of feeling when his paws are gently squeezed-a promising development for this brave pup.\n\nThis loving dog has endured much in his journey, and now he's ready for "
        "a place to call his own. If you're looking to make a profound difference in a dog's life and receive endless love in return, consider opening your heart and home to Tino. "
        "Submit an adoption application today, and a volunteer will be in touch to arrange a meeting. Don't miss the chance to meet Tino-he's truly one of a kind!",
    photos: ["https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/11/06/09/20231106092132.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/11/07/09/20231107095849.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/03/21/18/20240321180228.png"],
  ),
  DogInfo(
    id: "PPR-A-16585",
    name: "Tilly",
    breed: "Coonhound, Redbone",
    sex: "Female",
    weight: "52 lbs",
    age: "4Y/3M/4W",
    location: "Chino Hills, Kennel #12 (1 large dogs or 2 small dogs)",
    adoptionFee: "\$175.00",
    intakeDate: "6/20/2023",
    attributes: [
      'Crate Trained',
      'Needs Time to Adjust',
      'Needs Training',
      'No children home preferred',
      'Not a Fan of Cats',
      'Single Dog Home',
    ],
    description: "Introducing our lovely Tilly! Originally under our care in 2021, Tilly has recently returned to us. This sweet and sensitive girl is in search of the perfect "
        "home where she can thrive. Tilly prefers to be the sole dog in the household and can be protective of her loved ones. For this reason, she would do best with older "
        "children.\n\nTilly is both house trained and crate trained, making her an excellent indoor companion. She craves human company and would flourish with an owner who is "
        "frequently present. A true hound, she adores her walks, relishing every opportunity to sniff around. While she enjoys a good vocal session, she is well-behaved on leash."
        "\n\nAffectionate and playful, Tilly is quick to reciprocate love. She communicates her needs effectively and is a joy to be around. She has a knack for learning commands, "
        "already mastering sit, down, and shake. Treats and affection motivate her to continue learning, and she's currently progressing well with leash training.\n\nTilly is "
        "up-to-date on vaccinations, spayed, and microchipped, ready to find her forever home. If you have room in your heart and home for a smart and loving companion, consider "
        "meeting Tilly today! Please submit an online application to begin the process.",
    photos: ["https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/13/20240228131316.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2021/06/29/04/20210629041324.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2021/07/11/19/20210711193836.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2021/07/20/07/20210720072836.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/10/17/20230710171004.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/10/17/20230710171016.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/09/04/19/20230904194259.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/09/18/16/20230918162927.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/10/27/09/20231027093549.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/22/09/20240122094858.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/22/09/20240122094929.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/13/20240228131133.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/13/20240228131151.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/13/20240228131205.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/13/20240228131220.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/13/20240228131251.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/13/20240228131345.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/13/20240228131453.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/03/11/20/20240311201036.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/03/11/20/20240311201046.png"],
  ),
  DogInfo(
    id: "PPR-A-18239",
    name: "Rocky",
    breed: "Cattle Dog, Australian (Blue Heeler) / Mix",
    sex: "Male",
    weight: '',
    age: "2Y/4M/0W",
    location: "Foster Home",
    adoptionFee: "\$175.00",
    intakeDate: "8/29/2023",
    attributes: [
      'Experience with Breed preferred',
      'High Energy',
      'Needs Time to Adjust',
      'Needs Training',
      'Single Dog Home',
    ],
    description: "Meet Rocky! Rocky is a sweet boy who will be your best friend. He can be shy at first, but once he warms up, he is the most loyal boy! Being a cattle dog, "
        "Rocky will need a family who will continue his training and structure to be the best boy ever. He LOVES to swim and will fetch in the water and on land. Rocky does well "
        "with going potty outside and is working on crate training. He is still getting used to other dogs at this time so for now would do best as an only dog. If you are looking "
        "for a sweet, active dog, Rocky is your guy!",
    photos: ["https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/08/29/15/20230829155745_0.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2022/02/08/09/20220208094926.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2022/02/08/09/20220208094942.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2022/02/08/09/20220208095000.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/08/29/15/20230829155706.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/08/29/15/20230829155732.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/09/20/09/20230920090443.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/09/20/09/20230920090502.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/11/17/09/20231117095843.png"],
  ),
  DogInfo(
    id: "PPR-A-23181",
    name: "Carley",
    breed: "Pug / Beagle",
    sex: "Female",
    weight: "21 lbs",
    age: "3Y/5M/1W",
    location: "Claremont, Kennel #4 (1 large dogs or 2 small dogs)",
    adoptionFee: "\$275",
    intakeDate: "10/13/2023",
    attributes: [
      'Claremont Adoption Center',
      'High Energy',
      'Single Dog Home',
      'Social Butterfly!',
    ],
    description: "Introducing Carley! This delightful pup came into our care from the Riverside County Department of Animal Services, where she was sadly abandoned by her "
        "previous owner, despite being an absolute gem of a dog. It's truly perplexing why anyone would leave behind such a sweet, friendly, loving, and downright adorable "
        "companion. Nevertheless, we're immensely grateful to have Carley with us, where she is safe, cherished, and eagerly awaiting her forever home!\n\nCarley is a ray of "
        "sunshine on four paws. She absolutely loves her daily walks, and it's impossible not to notice the huge smile that lights up her face during these outings. If you're "
        "an active individual or family looking for a furry friend to join you on adventures, Carley might just be the perfect match for you.\n\nThis special girl thrives in an "
        "environment where playtime is abundant. Whether it's a game of fetch, tug-of-war, or simply frolicking around the yard, Carley is always up for some fun. She does have "
        "a preference, however-Carley is not the biggest fan of other animals and would much rather be the sole queen of her domain.\n\nIf you're ready to open your heart and "
        "home to Carley, we encourage you to take the next step. Simply fill out our online adoption application, and don't forget to pay us a visit to meet this lovable canine in "
        "person. Let's make sure Carley finds the loving family she truly deserves!\n\nAdoptions operate on a first-come, first-serve basis, so complete an application online at "
        "pricelesspetrescue.org to make this animal a cherished member of your family today!",
    photos: ["https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/04/22/20/20240422204019.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/06/20/08/20230620085748.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/01/21/20230701210741.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/01/21/20230701210754.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/07/12/21/20230712211316.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/08/15/13/20230815130514.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/11/27/17/20231127170109.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/11/27/17/20231127170118.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/13/12/20231213122825.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/13/12/20231213122837.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/13/12/20231213122852.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/20/13/20231220132346.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/26/15/20231226150917.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/03/17/20240103172223.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/14/20240228144700.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/14/20240228144713.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/14/20240228144732.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/14/20240228144757.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/14/20240228144919.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/14/20240228144938_0.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/14/20240228144957.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/14/20240228145013.png"],
  ),
  DogInfo(
    id: "PPR-A-24218",
    name: "Noel",
    breed: "Terrier, Pit Bull",
    sex: "Female",
    weight: "51 lbs",
    age: "4Y/5M/0W",
    location: "City of Industry, Kennel #3 (1 large dogs or 2 small dogs)",
    adoptionFee: "\$175.00",
    intakeDate: "11/19/2023",
    attributes: [
      'Dog Selective',
      'Lap Dog!',
      'Requires Secure Yard',
      'Social Butterfly!',
    ],
    description: "Sweet Noel arrived at Priceless Pets when she was left with her four tiny babies at a local shelter. The shelter reached out to us for assistance in saving these "
        "little loves, and we gladly stepped in. Now that her puppies have all found loving homes, it's Noel's turn to find her happily ever after.\n\nNoel is more than just a dog; "
        "she's a bundle of affection waiting to bring joy to a lucky family. During her time in foster care, she has been an absolute delight. Not only is she incredibly "
        "affectionate, but she's also remarkably well-behaved. In her foster home, she had no accidents indoors, showcasing her excellent house manners. Whether it's a leisurely "
        "stroll around the neighborhood or a playful romp with her favorite toys, Noel is always up for an adventure. She has a friendly demeanor that instantly wins over hearts, "
        "and she absolutely adores being showered with love and attention.\n\nHer foster family notes that Noel is a gem when it comes to cuddle time. She loves nothing more than "
        "curling up on the couch, content to be a loyal companion and a warm presence by your side. While she enjoys her walks, she's just as happy to be a lap dog, relishing every "
        "scratch behind the ears or gentle belly rub. It's clear that Noel has had some training in her past life, as she readily responds to commands like 'Sit' and 'Down,' "
        "showing her eagerness to please and her intelligence.\n\nConsider welcoming Noel into your family-you won't regret it. This sweet girl is not just looking for a place to "
        "stay; she's searching for a forever home where she can share her boundless love and companionship. She is spayed, microchipped, and vaccinated, ready to embark on this "
        "new chapter of her life with you. Whether you're a family looking for a loyal companion or an individual seeking a loving friend, Noel is more than ready to fill your "
        "home with happiness and love.",
    photos: ["https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/04/01/18/20240401183618.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/06/14/20231206141741.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/06/14/20231206141753.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/06/14/20231206141806.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/20/05/20231220050244.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/20/05/20231220050457.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/20/05/20231220050557.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/12/20/05/20231220050621.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/19/11/20240119111945.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/19/11/20240119111952.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/19/11/20240119112001_0.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/19/11/20240119112018.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/21/19/20240121190324.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/28/20/20240128200923.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/25/18/20240225184514.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/03/25/16/20240325163317.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/03/25/16/20240325163328.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/03/25/16/20240325163337.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/03/25/16/20240325163350.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/04/01/18/20240401183651.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/04/01/18/20240401183723.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/04/02/09/20240402094731.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/04/02/09/20240402094741.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/04/02/09/20240402094752.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/04/02/09/20240402094800.png"
    ],
  ),
  DogInfo(
    id: "PPR-A-24274",
    name: "Sherlock Bones",
    breed: "Retriever, Labrador / Terrier",
    sex: "Male",
    weight: "65 lbs",
    age: "1Y/5M/1W",
    location: "Chino Hills Location",
    adoptionFee: "\$275",
    intakeDate: "11/28/2023",
    attributes: [
      "Chino Hills Adoption Center",
      "High Energy",
      "Social Butterfly!",
    ],
    description: "Meet Sherlock Bones, our mystery-solving marvel who emerged from the enigma of Costa Mesa Animal Control as a charismatic stray. While the details of his past "
        "remain shrouded in secrecy, one thing is crystal clear - Sherlock's future is destined to be extraordinary!\n\nThis dapper one-year-old lab mix is not just handsome; he's"
        " the proud owner of the most delightful floppy ears you'll ever encounter. Sherlock is a curious adventurer, always ready for a stroll where he showcases his leash "
        "etiquette with finesse. It might take a moment for him to open the case file on trust, but once the investigation is complete, Sherlock transforms into a beacon of "
        "affection.\n\nAccording to one of Sherlock's esteemed volunteers, he's a youthfully exuberant lad, reveling in outdoor escapades, sniffs, and the generous distribution of "
        "scratches and head pets.\n\nSherlock Bones is more than a canine companion; he's your soon-to-be adventure confidant. Are you ready to unlock the mysteries of joy with this "
        "four-legged detective? Adopt Sherlock, and let the adventure begin! Adoptions operate on a first-come, first-serve basis, so complete an application online at "
        "pricelesspetrescue.org to make this sweet dog a cherished member of your family today!",
    photos: ["https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/16/16/20240216164108.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/11/29/15/20231129151743.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2023/11/29/15/20231129151819.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/29/19/20240129193200.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/01/29/19/20240129193206.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/16/16/20240216163857.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/16/16/20240216164058.png",
      "https://sl-prod-v2-cdn.shelterluv.com/sites/default/files/animal_pics/13749/2024/02/28/13/20240228131622.png"],
  ),
];