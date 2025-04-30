//
//  AnimalData.swift
//  Wilder
//
//  Created by Damian Perez on 2/6/24.
//  Abstract: Contains a static collection of predefined Animal instances to represent various species within the app. 
//

import Foundation

struct AnimalData {
    static let animals: [Animal] = [
        Animal(name: "Lion", image: "lion", animalClass: "Mammalia", family: "Felidae", ecosystem: "Savannahs, Grasslands", funFacts: [
            "Lions have a roar that can be heard up to 5 miles away.",
            "They spend about 20 hours a day resting and are most active at dusk and dawn.",
            "A lion's heels don't touch the ground when it walks.",
            "Lion cubs are born with spots on their fur, which disappear as they grow older.",
            "Lions are known to live in the 'pride lands,' where they form complex social structures."
        ], conservationStatus: .threatened, soundFileName: "lionsound", description: "The lion is known for its majestic presence and is often called the king of the savannah. Its powerful roar and majestic mane make it one of the most revered animals in the animal kingdom."),
        Animal(name: "Polar Bear", image: "polarbear", animalClass: "Mammalia", family: "Ursidae", ecosystem: "Arctic", funFacts: [
            "Polar bears are the largest land carnivores in the world.",
            "Their fur is not actually white; it's transparent and reflects visible light.",
            "Polar bears have a layer of fat under their skin that can be up to 4 inches thick.",
            "They can detect seals, their primary prey, nearly a mile away and up to 3 feet under the snow.",
            "Polar bears are excellent divers and can swim underwater for up to 3 minutes at a time."
        ], conservationStatus: .threatened, soundFileName: "notRecorded", description: "Polar bears are the giants of the Arctic, perfectly adapted to cold climates with their thick fur and layer of fat. They are skilled hunters on ice, relying on sea ice to find their main prey, seals."),
        Animal(name: "Gerenuk", image: "gerenuk", animalClass: "Mammalia", family: "Bovidae", ecosystem: "East Africa", funFacts: [
            "Gerenuks are also known as 'giraffe gazelles' due to their long necks.",
            "They rarely drink water, obtaining most of their moisture from the leaves they eat.",
            "Gerenuks can live up to 8-10 years in the wild.",
            "They use their long tongues to reach leaves, shoots, and flowers that other animals can't.",
            "Gerenuks are very cautious and can stand motionless for long periods to avoid predators."
        ], conservationStatus: .threatened, soundFileName: "notRecorded", description: "The gerenuk, also known as the giraffe gazelle, is notable for its extremely long neck, which it uses to reach high branches that other herbivores cannot. This unique adaptation allows it to thrive in its arid habitat."),
        Animal(name: "Flamingo", image: "flamingo", animalClass: "Aves", family: "Phoenicopteridae", ecosystem: "Wetlands", funFacts: [
            "Flamingos lay only one egg per year, and both parents are involved in incubation.",
            "They can live up to 30 years in the wild.",
            "Flamingos are filter feeders and turn their heads upside down while feeding.",
            "The backward bending 'knee' of a flamingo's leg is actually its ankle; the knee is hidden by feathers.",
            "Groups of flamingos are called 'flamboyances.'"
        ], conservationStatus: .someEndangered, soundFileName: "notRecorded", description: "Flamingos are easily recognized by their pink feathers and long legs. They prefer living in large colonies and are often found feeding in shallow waters, using their specialized beaks to filter feed."),
        Animal(name: "Giraffe", image: "giraffe", animalClass: "Mammalia", family: "Giraffidae", ecosystem: "Savannahs, Grasslands", funFacts: [
            "Giraffes have the same number of vertebrae in their necks as humans—just seven, but each one is much larger.",
            "A giraffe's tongue can be up to 20 inches long and is darkly colored to prevent sunburn.",
            "Giraffe calves can stand and even run within an hour of being born.",
            "Giraffes have a unique walking gait, moving both right legs forward, then both left.",
            "Their spots are as unique as human fingerprints."
        ], conservationStatus: .someEndangered, soundFileName: "notRecorded", description: "Giraffes are the tallest land animals, with long necks that allow them to access leaves from tall trees. They are known for their unique coat patterns and gentle demeanor."),
        Animal(name: "Koala", image: "koala", animalClass: "Mammalia", family: "Phascolarctidae", ecosystem: "Australia", funFacts: [
            "Koalas have two opposable thumbs on each front paw for a better grip on trees.",
            "They sleep up to 18 hours a day due to the low energy content of their diet.",
            "Koalas have a special digestive organ called a caecum that helps detoxify the eucalyptus leaves they eat.",
            "Despite the common reference, koalas are not bears but marsupials.",
            "Baby koalas, called 'joeys,' are born blind and earless and develop in their mother's pouch for about six months."
        ], conservationStatus: .threatened, soundFileName: "notRecorded", description: "Koalas are tree-dwelling marsupials native to Australia. They have a diet mainly consisting of eucalyptus leaves and are known for their distinctive round ears and spoon-shaped nose."),
        Animal(name: "Jaguar", image: "jaguar", animalClass: "Mammalia", family: "Felidae", ecosystem: "Amazon Rainforest", funFacts: [
            "Jaguars are solitary animals and only come together for mating purposes.",
            "They are named from the Native American word 'yaguar,' which means 'he who kills with one leap.'",
            "Jaguars have extremely powerful jaws and can crack sea turtle shells.",
            "Unlike many other cats, jaguars do not avoid water; they are good swimmers and often live near water bodies.",
            "Jaguars have a 'rosette' spotted pattern that helps them blend into the forest's dappled light."
        ], conservationStatus: .threatened, soundFileName: "jaguarsound", description: "Jaguars are powerful predators native to the Americas, particularly in dense rainforests. They are solitary animals, known for their striking spotted coats and strong swimming abilities."),
        Animal(name: "Vulture", image: "vulture", animalClass: "Aves", family: "Accipitridae", ecosystem: "Various", funFacts: [
            "Vultures have a highly acidic stomach that allows them to safely consume carrion that may contain diseases.",
            "They play a crucial role in their ecosystems by acting as nature's clean-up crew.",
            "Some vulture species use tools, such as rocks, to break open eggshells.",
            "Vultures have excellent soaring abilities and can travel vast distances without much effort.",
            "Group names for vultures vary; when in flight, they are called a 'kettle,' and when feeding at a carcass, they are known as a 'wake.'"
        ], conservationStatus: .someEndangered, soundFileName: "notRecorded", description: "Vultures are scavenging birds of prey, playing an important role in the ecosystem by cleaning up dead animals. They have keen eyesight and can fly at high altitudes to spot their meals."),
        Animal(name: "Orangutan", image: "orangutan", animalClass: "Mammalia", family: "Hominidae", ecosystem: "Rainforests of Borneo and Sumatra", funFacts: [
            "Orangutans are known to use leaves as umbrellas to protect themselves from rain.",
            "They are the slowest breeding of all mammal species, with females giving birth approximately once every 8 years.",
            "Orangutans have been observed using tools, such as sticks, to 'fish' for termites or honey.",
            "Their long arms can span over 7 feet from fingertip to fingertip.",
            "Orangutans are highly intelligent and capable of emotional expressions similar to humans.",
            "They spend over 90% of their day in trees, making them one of the most arboreal of the great apes."
        ], conservationStatus: .endangered, soundFileName: "orangutansound", description: "Orangutans are great apes known for their intelligence and the long, reddish hair covering their bodies. They spend most of their lives in trees and are native to the rainforests of Borneo and Sumatra."),
        Animal(name: "Mangabey", image: "mangabey", animalClass: "Mammalia", family: "Cercopithecidae", ecosystem: "Central Africa", funFacts: [
            "Mangabeys are known for their loud, distinctive calls, which can be heard up to 2 miles away in the forest.",
            "They have cheek pouches to store food while foraging.",
            "Dr. Seuss was inspired by the Mangabey for the character of the Grinch.",
            "Their diet mainly consists of fruits, seeds, insects, and occasionally small vertebrates."
        ], conservationStatus: .someEndangered, soundFileName: "notRecorded", description: "Mangabeys are a diverse group of monkeys found in the forests of Africa. They are social animals, known for their long limbs and tails, which aid in their arboreal lifestyle."),
        Animal(name: "Gorilla", image: "gorilla", animalClass: "Mammalia", family: "Hominidae", ecosystem: "Forests of Central Africa", funFacts: [
            "Gorillas can eat up to 40 pounds of vegetation a day.",
            "They have unique nose prints, which can be used to identify individuals.",
            "Silverback gorillas are the dominant male of the group and are responsible for the safety and well-being of the troop.",
            "Gorillas share 98% of their DNA with humans, making them one of our closest relatives."
        ], conservationStatus: .endangered, soundFileName: "notRecorded", description: "Gorillas are the largest living primates, known for their robust build and gentle nature. They live in family groups led by a silverback and primarily inhabit the forests of central Africa."),
        Animal(name: "Capybara", image: "capybara", animalClass: "Mammalia", family: "Caviidae", ecosystem: "Wetlands and Forests of South America", funFacts: [
            "Capybaras are highly social and live in groups of 10 to 20 individuals.",
            "They are excellent swimmers and can even sleep in the water, keeping only their noses above the surface.",
            "Capybaras can eat their own feces as a way of obtaining more nutrients from their food.",
            "They communicate with each other through a variety of sounds including barks, whistles, and grunts."
        ], conservationStatus: .threatened, soundFileName: "notRecorded", description: "Capybaras are the largest rodents in the world, native to South America. They are highly social and aquatic animals, often found in groups near bodies of water."),
        Animal(name: "Camel", image: "camel", animalClass: "Mammalia", family: "Camelidae", ecosystem: "Deserts", funFacts: [
            "Camels can close their nostrils to keep sand at bay during sandstorms.",
            "They have two types of fur: a thick undercoat for warmth and a longer overcoat that protects against the sun.",
            "A camel's hump is a fat reserve, not a water reservoir, which they metabolize when food is scarce.",
            "They have a remarkable ability to regulate their body temperature, allowing them to survive extreme changes in desert temperatures."
        ], conservationStatus: .someEndangered, soundFileName: "notRecorded", description: "Camels are desert dwellers famous for their ability to go for long periods without water. Their humps store fat, which can be converted into water and energy, and they have thick eyelashes and nostrils that can close to protect against sand."),
        Animal(name: "Serval", image: "serval", animalClass: "Mammalia", family: "Felidae", ecosystem: "African Savannahs", funFacts: [
            "Servals have the largest ears relative to their body size of any cat species, which they use to detect prey.",
            "They are solitary creatures, with territories up to 4 square miles that they mark with their scent.",
            "Servals are known to leap vertically and catch birds right out of the air with their paws.",
            "Their spotted and striped coat provides excellent camouflage in the African grasslands."
        ], conservationStatus: .someEndangered, soundFileName: "servalsound", description: "Servals are medium-sized African cats known for their long legs, large ears, and spotted coat. They are excellent hunters, using their acute hearing to detect prey."),
        Animal(name: "Tasmanian Devil", image: "tasmaniandevil", animalClass: "Mammalia", family: "Dasyuridae", ecosystem: "Tasmania", funFacts: [
            "Tasmanian devils have one of the strongest bites per unit body size of any mammalian predator.",
            "They are named for their ferocious temperament when feeding or threatened.",
            "Tasmanian devils are nocturnal hunters and scavengers, eating everything from insects to small mammals.",
            "They have a distinctive black fur with white markings on their chest and some parts of their body."
        ], conservationStatus: .endangered, soundFileName: "notRecorded", description: "The Tasmanian devil is a carnivorous marsupial native to Tasmania. Known for its strong bite and loud screeches, it is the largest carnivorous marsupial in the world."),
        Animal(name: "Koi Fish", image: "koifish", animalClass: "Actinopterygii", family: "Cyprinidae", ecosystem: "Domesticated, originally from East Asia", funFacts: [
            "Koi fish are descendants of the common carp and were selectively bred for their colors in Japan in the 1820s.",
            "They recognize the persons feeding them and can be trained to eat from their hand.",
            "Koi symbolize perseverance in Japanese culture due to their ability to swim upstream.",
            "They have a hierarchical social structure in ponds, often led by a dominant female."
        ], conservationStatus: .notThreatened, soundFileName: "notRecorded", description: "Koi fish are ornamental varieties of domesticated carp, originally bred in Japan. They are known for their bright colors and patterns and are often kept in outdoor ponds and water gardens."),
        Animal(name: "Figeater Beetle", image: "figeater", animalClass: "Insecta", family: "Scarabaeidae", ecosystem: "North America", funFacts: [
            "Figeater beetles are often mistaken for green June beetles due to their similar appearance.",
            "They make a loud buzzing noise while flying, which is often mistaken for that of a bumblebee.",
            "Adult figeater beetles feed on ripe fruits, particularly figs, hence their name.",
            "Their larvae, known as 'crawly backs,' feed on decomposing plant material and roots in the soil."
        ], conservationStatus: .someEndangered, soundFileName: "notRecorded", description: "Figeater beetles are large green beetles common in the western parts of the United States. They feed on ripe fruit and are known for their loud, buzzing flight."),
        Animal(name: "Elephant", image: "elephant", animalClass: "Mammalia", family: "Elephantidae", ecosystem: "Sub-Saharan Africa, South Asia, and Southeast Asia", funFacts: [
            "Elephants are known for their complex social structures, led by a matriarch.",
            "They have incredible memory and can recognize other elephants and humans after many years.",
            "Elephants communicate using a variety of sounds, some of which are below the frequency humans can hear.",
            "They use mud as a sunscreen, protecting their skin from ultraviolet light."
        ], conservationStatus: .endangered, soundFileName: "elephantsound", description: "Elephants are the largest land animals, known for their intelligence, social behavior, and the prominent tusks found in both males and females. They have a significant impact on their environment and are key species in their habitats."),
        Animal(name: "Grizzly Bear", image: "brownbear", animalClass: "Mammalia", family: "Ursidae", ecosystem: "North America", funFacts: [
            "American brown bears, also known as grizzly bears, have a 'hump' on their shoulders made of muscle.",
            "They can use tools, such as rocks, to crack open nuts and shells.",
            "Grizzly bears have a keen sense of smell, surpassing that of hound dogs.",
            "They are not true hibernators but enter a state of torpor, where their metabolism slows down."
        ], conservationStatus: .notThreatened, soundFileName: "bearsound", description: "Grizzly bears, also known as North American brown bears, are powerful and solitary animals. They have a distinctive hump on their shoulders and a wide range of habitats, from forests to alpine meadows."),
        Animal(name: "Zebra", image: "zebra", animalClass: "Mammalia", family: "Equidae", ecosystem: "Savannahs, Grasslands of Africa", funFacts: [
            "Zebra stripes are thought to serve as camouflage and to confuse predators during a chase.",
            "No two zebras have the same stripe pattern, making each individual unique.",
            "Zebras have excellent eyesight and hearing, relying on these senses to alert them to predators.",
            "They are very social animals and form strongbonds within their herds, known as 'zeal.'"
        ], conservationStatus: .someEndangered, soundFileName: "notRecorded", description: "Zebras are African equines known for their distinctive black-and-white striped patterns. Each individual's stripes are unique, and they are social animals that live in herds."),
        Animal(name: "Bontebok", image: "bontebok", animalClass: "Mammalia", family: "Bovidae", ecosystem: "Fynbos in South Africa", funFacts: [
            "Bonteboks were once considered one of the rarest antelopes, with numbers as low as 17 individuals in the wild.",
            "They are now a conservation success story, with populations restored through protective measures.",
            "Bonteboks are very picky feeders and prefer short grasses.",
            "They are endemic to South Africa and cannot survive outside of their native fynbos habitat."
        ], conservationStatus: .threatened, soundFileName: "notRecorded", description: "The bontebok is an antelope found in South Africa, known for its striking appearance and conservation success story. Once on the brink of extinction, their numbers have recovered due to dedicated conservation efforts.")
    ]
}
