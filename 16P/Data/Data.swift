//
//  Data.swift
//  16P
//
//  Created by admin on 12/3/2567 BE.
//

import Foundation

enum pGroup {
    case basics
    case types
}

struct pData: Identifiable {
    var id = UUID()
    var title: String // title image = title+"-M" detail
    var detail: [String]
    var tag: String
    var color: String
}

extension pData {
    static let PTypes: [pData] = [
        pData(title: "INTJ", detail: ["""
                                      INTJ (Architect) is a personality type with the Introverted, Intuitive, Thinking, and Judging traits. These thoughtful tacticians love perfecting the details of life, applying creativity and rationality to everything they do. Their inner world is often a private, complex one.
                                      ""","""
                                      Thought constitutes the greatness of man. Man is a reed, the feeblest thing in nature, but he is a thinking reed.
                                      ""","""
                                      Blaise Pascal
                                      ""","""
                                      People with the INTJ personality type (Architects) are intellectually curious individuals with a deep-seated thirst for knowledge. INTJs tend to value creative ingenuity, straightforward rationality, and self-improvement. They consistently work toward enhancing intellectual abilities and are often driven by an intense desire to master any and every topic that piques their interest.
                                      ""","""
                                      Logical and quick-witted, INTJs pride themselves on their ability to think for themselves, not to mention their uncanny knack for seeing right through phoniness and hypocrisy. Because their minds are never at rest, these personalities may sometimes struggle to find people who can keep up with their nonstop analysis of everything around them. But when they do find like-minded individuals who appreciate their intensity and depth of thought, INTJs form profound and intellectually stimulating relationships that they deeply treasure.
                                      ""","""
                                      People with the INTJ personality type, independent to the core, want to shake off other people’s expectations and pursue their own ideas.
                                      """
                                     ], tag: "types", color: "purple"),
        pData(title: "INTP", detail:  ["""
                                     INTP (Logician) is a personality type with the Introverted, Intuitive, Thinking, and Prospecting traits. These flexible thinkers enjoy taking an unconventional approach to many aspects of life. They often seek out unlikely paths, mixing willingness to experiment with personal creativity.
                                     ""","""
                                     The important thing is not to stop questioning. Curiosity has its own reason for existence.
                                     ""","""
                                     ALBERT EINSTEIN
                                     ""","""
                                     People with the INTP personality type (Logicians) pride themselves on their unique perspective and vigorous intellect. They can’t help but puzzle over the mysteries of the universe – which may explain why some of the most influential philosophers and scientists of all time have been INTPs. People with this personality type tend to prefer solitude, as they can easily become immersed in their thoughts when they are left to their own devices. They are also incredibly creative and inventive, and they are not afraid to express their novel ways of thinking or to stand out from the crowd.
                                     ""","""
                                     Imaginative and curious, people with the INTP personality type can find endless fascination in the workings of their own mind.
                                     """], tag: "types", color: "purple"),
        pData(title: "ENTJ", detail: ["""
                                     ENTJ (Commander) is a personality type with the Extraverted, Intuitive, Thinking, and Judging traits. They are decisive people who love momentum and accomplishment. They gather information to construct their creative visions but rarely hesitate for long before acting on them.
                                     ""","""
                                     Your time is limited, so don’t waste it living someone else’s life.
                                     ""","""
                                     Steve Jobs
                                     ""","""
                                     People with the ENTJ personality type (Commanders) are natural-born leaders. Embodying the gifts of charisma and confidence, ENTJs project authority in a way that draws crowds together behind a common goal. However, these personalities are also characterized by an often ruthless level of rationality, using their drive, determination, and sharp mind to achieve whatever objectives they’ve set for themselves. Their intensity might sometimes rub people the wrong way, but ultimately, ENTJs take pride in both their work ethic and their impressive level of self-discipline.
                                     ""","""
                                     ENTJ personalities perceive themselves to be a strong positive influence on others.
                                     """], tag: "types", color: "purple"),
        pData(title: "ENTP", detail: ["""
                                     ENTP (Debater) is a personality type with the Extraverted, Intuitive, Thinking, and Prospecting traits. They tend to be bold and creative, deconstructing and rebuilding ideas with great mental agility. They pursue their goals vigorously despite any resistance they might encounter.
                                     ""","""
                                     Follow the path of the unsafe, independent thinker. Expose your ideas to the dangers of controversy.
                                     ""","""
                                     Thomas J. Watson
                                     ""","""
                                     Quick-witted and audacious, people with the ENTP personality type (Debaters) aren’t afraid to disagree with the status quo. In fact, they’re not afraid to disagree with pretty much anything or anyone. Few things light up these personalities more than a bit of verbal sparring – and if the conversation veers into controversial terrain, so much the better.
                                     ""","""
                                     It would be a mistake, though, to think of ENTPs as disagreeable or mean-spirited. Instead, people with this personality type are knowledgeable and curious with a playful sense of humor, and they can be incredibly entertaining. They simply have an offbeat, contrarian idea of fun – one that usually involves a healthy dose of spirited debate.
                                     ""","""
                                     ENTP personalities are the ultimate devil’s advocates, thriving on the process of shredding people’s arguments to pieces. Sometimes they even rebel against their own beliefs by arguing the opposing viewpoint – just to see how the world looks from the other side.
                                     """], tag: "types", color: "purple"),
        pData(title: "INFJ", detail: ["""
                                     INFJ (Advocate) is a personality type with the Introverted, Intuitive, Feeling, and Judging traits. They tend to approach life with deep thoughtfulness and imagination. Their inner vision, personal values, and a quiet, principled version of humanism guide them in all things.
                                     ""","""
                                     Treat people as if they were what they ought to be and you help them to become what they are capable of being.
                                     ""","""
                                     Johann Wolfgang Von Goethe
                                     ""","""
                                     Idealistic and principled, people with the INFJ personality type (Advocates) aren’t content to coast through life – they want to stand up and make a difference. For these compassionate personalities, success doesn’t come from money or status but from seeking fulfillment, helping others, and being a force for good in the world.
                                     ""","""
                                     While they have lofty goals and ambitions, INFJs shouldn’t be mistaken for idle dreamers. People with this personality type care about integrity, and they’re rarely satisfied until they’ve done what they know to be right. Conscientious to the core, they move through life with a clear sense of their values, and they aim to never lose sight of what truly matters – not according to other people or society at large but according to their own wisdom and intuition.
                                     ""","""
                                     INFJ personalities might come across as somewhat reserved, but they are fueled by a profound internal passion. Stimulated by deep, reflective thought and an enormous amount of empathy, they dedicate themselves to the pursuit of purpose.
                                     """], tag: "types", color: "green"),
        pData(title: "INFP", detail: ["""
                                     INFP (Mediator) is a personality type with the Introverted, Intuitive, Feeling, and Prospecting traits. These rare personality types tend to be quiet, open-minded, and imaginative, and they apply a caring and creative approach to everything they do.
                                     ""","""
                                     All that is gold does not glitter; not all those who wander are lost; the old that is strong does not wither; deep roots are not reached by the frost.
                                     ""","""
                                     J. R. R. TOLKIEN
                                     ""","""
                                     Although they may seem quiet or unassuming, people with the INFP personality type (Mediators) have vibrant, passionate inner lives. Creative and imaginative, they happily lose themselves in daydreams, inventing all sorts of stories and conversations in their mind. INFPs are known for their sensitivity – these personalities can have profound emotional responses to music, art, nature, and the people around them. They are known to be extremely sentimental and nostalgic, often holding onto special keepsakes and memorabilia that brighten their days and fill their heart with joy.
                                     ""","""
                                     Idealistic and empathetic, people with the INFP personality type long for deep, soulful relationships, and they feel called to help others. Due to the fast-paced and competitive nature of our society, they may sometimes feel lonely or invisible, adrift in a world that doesn’t seem to appreciate the traits that make them unique. Yet it is precisely because INFPs brim with such rich sensitivity and profound creativity that they possess the unique potential to connect deeply and initiate positive change.
                                     ""","""
                                     INFPs have a talent for self-expression. They may reveal their innermost thoughts and secrets through metaphors and fictional characters.
                                     """], tag: "types", color: "green"),
        pData(title: "ENFJ", detail: ["""
                                     ENFJ (Protagonist) is a personality type with the Extraverted, Intuitive, Feeling, and Judging traits. These warm, forthright types love helping others, and they tend to have strong ideas and values. They back their perspective with the creative energy to achieve their goals.
                                     ""","""
                                     When the whole world is silent, even one voice becomes powerful.
                                     ""","""
                                     MALALA YOUSAFZAI
                                     ""","""
                                     People with the ENFJ personality type (Protagonists) feel called to serve a greater purpose in life. Thoughtful and idealistic, ENFJs strive to have a positive impact on other people and the world around them. These personalities rarely shy away from an opportunity to do the right thing, even when doing so is far from easy.
                                     ""","""
                                     ENFJs are born leaders, which explains why these personalities can be found among many notable politicians, coaches, and teachers. Their passion and charisma allow them to inspire others not just in their careers but in every arena of their lives, including their relationships. Few things bring people with the ENFJ personality type a deeper sense of joy and fulfillment than guiding friends and loved ones to grow into their best selves.
                                     ""","""
                                     ENFJs possess the unique ability to remain hopeful in the face of difficulties, always remembering that there is something to be grateful for.
                                     """], tag: "types", color: "green"),
        pData(title: "ENFP", detail: ["""
                                     ENFP (Campaigner) is a personality type with the Extraverted, Intuitive, Feeling, and Prospecting traits. These people tend to embrace big ideas and actions that reflect their sense of hope and goodwill toward others. Their vibrant energy can flow in many directions.
                                     ""","""
                                     It doesn’t interest me what you do for a living. I want to know what you ache for – and if you dare to dream of meeting your heart’s longing.
                                     ""","""
                                     ORIAH MOUNTAIN DREAMER
                                     ""","""
                                     People with the ENFP personality type (Campaigners) are true free spirits – outgoing, openhearted, and open-minded. With their lively, upbeat approach to life, ENFPs stand out in any crowd. But even though they can be the life of the party, they don’t just care about having a good time. These personalities have profound depths that are fueled by their intense desire for meaningful, emotional connections with others.
                                     ""","""
                                     ENFPs are independent and creative, always on the lookout for the magic and meaning in everyday life. They can’t help but ponder the deeper significance of life – even when they should be paying attention to something else.
                                     """], tag: "types", color: "green"),
        pData(title: "ISTJ", detail: ["""
                                     ISTJ (Logistician) is a personality type with the Introverted, Observant, Thinking, and Judging traits. These people tend to be reserved yet willful, with a rational outlook on life. They compose their actions carefully and carry them out with methodical purpose.
                                     ""","""
                                     I’d be more frightened by not using whatever abilities I’d been given. I’d be more frightened by procrastination and laziness.
                                     ""","""
                                     DENZEL WASHINGTON
                                     ""","""
                                     People with the ISTJ personality type (Logisticians) mean what they say and say what they mean, and when they commit to doing something, they make sure to follow through. With their responsible and dependable nature, it might not be so surprising that ISTJ personalities also tend to have a deep respect for structure and tradition. They are often drawn to organizations, workplaces, and educational settings that offer clear hierarchies and expectations.
                                     ""","""
                                     While ISTJs may not be particularly flashy or attention seeking, they do more than their share to keep society on a sturdy, stable foundation. In their families and their communities, people with this personality type often earn respect for their reliability, their practicality, and their ability to stay grounded and logical in even the most stressful situations.
                                     ""","""
                                     True to their methodical nature, ISTJs often steer clear of impulsive behaviors, instead favoring careful deliberation when it comes to decision-making of any kind.
                                     """], tag: "types", color: "blue"),
        pData(title: "ISFJ", detail: ["""
                                     ISFJ (Defender) is a personality type with the Introverted, Observant, Feeling, and Judging traits. These people tend to be warm and unassuming in their own steady way. They’re efficient and responsible, giving careful attention to practical details in their daily lives.
                                     ""","""
                                     Love only grows by sharing. You can only have more for yourself by giving it away to others.
                                     ""","""
                                     Brian Tracy
                                     ""","""
                                     In their unassuming, understated way, people with the ISFJ personality type (Defenders) help make the world go round. Hardworking and devoted, these personalities feel a deep sense of responsibility to those around them. ISFJs can be counted on to meet deadlines, remember birthdays and special occasions, uphold traditions, and shower their loved ones with gestures of care and support. But they rarely demand recognition for all that they do, preferring instead to operate behind the scenes.
                                     ""","""
                                     This is a capable, can-do personality type with a wealth of versatile gifts. Though sensitive and caring, ISFJs also have excellent analytical abilities and an eye for detail. And despite their reserve, they tend to have well-developed people skills and robust social relationships. These personalities are truly more than the sum of their parts, and their varied strengths shine in even the most ordinary aspects of their daily lives.
                                     ""","""
                                     ISFJs are true altruists, meeting kindness with kindness-in-excess and engaging with the work and people they believe in with enthusiasm and generosity.
                                     """], tag: "types", color: "blue"),
        pData(title: "ESTJ", detail: ["""
                                      ESTJ (Executive) is a personality type with the Extraverted, Observant, Thinking, and Judging traits. They possess great fortitude, emphatically following their own sensible judgment. They often serve as a stabilizing force among others, able to offer solid direction amid adversity.
                                      ""","""
                                      Good order is the foundation of all things.
                                      ""","""
                                      Edmund Burke
                                      ""","""
                                      People with the ESTJ personality type (Executives) are representatives of tradition and order, utilizing their understanding of what is right, wrong, and socially acceptable to bring families and communities together. Embracing the values of honesty and dedication, ESTJs are valued for their mentorship mindset and their ability to create and follow through on plans in a diligent and efficient manner. They will happily lead the way on difficult paths, and they won’t give up when things become stressful.
                                      ""","""
                                      ESTJs are classic images of the model citizen: they help their neighbors, uphold the law, and try to make sure that everyone participates in the communities and organizations that they hold so dear.
                                      """], tag: "types", color: "blue"),
        pData(title: "ESFJ", detail: ["""
                                     ESFJ (Consul) is a personality type with the Extraverted, Observant, Feeling, and Judging traits. They are attentive and people-focused, and they enjoy taking part in their social community. Their achievements are guided by decisive values, and they willingly offer guidance to others.
                                     ""","""
                                     Encourage, lift, and strengthen one another. For the positive energy spread to one will be felt by us all.
                                     ""","""
                                     Deborah Day
                                     ""","""
                                     For people with the ESFJ personality type (Consuls), life is sweetest when it’s shared with others. These social individuals form the bedrock of many communities, opening their homes – and their hearts – to friends, loved ones, and neighbors.
                                     ""","""
                                     This doesn’t mean that they are saints or that they like everyone. In fact, they are much more likely to form close bonds with people who share their same values and opinions. But regardless of other people’s beliefs, ESFJ personalities still strongly believe in the power of hospitality and good manners, and they tend to feel a sense of duty to those around them. Generous and reliable, they often take it upon themselves – in ways both large and small – to hold their families and their communities together.
                                     ""","""
                                     ESFJs have a talent for making the people in their lives feel supported, cared for, and secure.
                                     """], tag: "types", color: "blue"),
        pData(title: "ISTP", detail: ["""
                                     ISTP (Virtuoso) is a personality type with the Introverted, Observant, Thinking, and Prospecting traits. They tend to have an individualistic mindset, pursuing goals without needing much external connection. They engage in life with inquisitiveness and personal skill, varying their approach as needed.
                                     ""","""
                                     I wanted to live the life, a different life. I didn’t want to go to the same place every day and see the same people and do the same job. I wanted interesting challenges.
                                     ""","""
                                     Harrison Ford
                                     ""","""
                                     People with the ISTP personality type (Virtuosos) love to explore with their hands and their eyes, touching and examining the world around them with an impressive diligence, a casual curiosity, and a healthy dose of skepticism. They are natural makers, moving from project to project, building the useful and the superfluous for the fun of it and learning from their environment as they go. They find no greater joy than in getting their hands dirty pulling things apart and putting them back together, leaving them just a little bit better than they were before.
                                     ""","""
                                     ISTPs prefer to approach problems directly, seeking straightforward solutions over convoluted troubleshooting methods. People with this personality type rely heavily on firsthand experience and trial and error as they execute their ideas and projects. And as they do so, they usually prefer to work at their own pace, on their own terms, and without unnecessary interruptions.
                                     ""","""
                                     This is not a type who is inclined to socialize beyond what is necessary as they try to accomplish their goals. In fact, ISTP personalities generally find regular socializing to be taxing. And when they do decide to get together with people, they will almost always choose smaller, more meaningful interactions over superficial networking.
                                     ""","""
                                     ISTPs act spontaneously on a new interest, exploring its viability after they’ve shifted gears.
                                     """], tag: "types", color: "yellow"),
    pData(title: "ISFP", detail: ["""
                                 ISFP (Adventurer) is a personality type with the Introverted, Observant, Feeling, and Prospecting traits. They tend to have open minds, approaching life, new experiences, and people with grounded warmth. Their ability to stay in the moment helps them uncover exciting potentials.
                                 ""","""
                                 I change during the course of a day. I wake and I’m one person, and when I go to sleep I know for certain I’m somebody else.
                                 ""","""
                                 Bob Dylan
                                 ""","""
                                 People with the ISFP personality type (Adventurers) are true artists – although not necessarily in the conventional sense. For these types, life itself is a canvas for self-expression. From what they wear to how they spend their free time, they act in ways that vividly reflect who they are as unique individuals. With their exploratory spirit and their ability to find joy in everyday life, ISFPs can be among the most interesting people you’ll ever meet.
                                 ""","""
                                 Driven by their sense of fairness and their open-mindedness, people with this personality type move through life with an infectiously encouraging attitude. They love motivating those close to them to follow their passions and usually follow their own interests with the same unhindered enthusiasm. The only irony? Unassuming and humble, ISFPs tend to see themselves as “just doing their own thing,” so they may not even realize how remarkable they really are.
                                 ""","""
                                 ISFPs want to live in a world where they – and everyone else – have the freedom to live as they see fit, without judgment.
                                 """], tag: "types", color: "yellow"),
        pData(title: "ESTP", detail: ["""
                                     ESTP (Entrepreneur) is a personality type with the Extraverted, Observant, Thinking, and Prospecting traits. They tend to be energetic and action-oriented, deftly navigating whatever is in front of them. They love uncovering life’s opportunities, whether socializing with others or in more personal pursuits.
                                     ""","""
                                     Life is either a daring adventure or nothing at all.
                                     ""","""
                                     Helen Keller
                                     ""","""
                                     People with the ESTP personality type (Entrepreneurs) are vibrant individuals brimming with an enthusiastic and spontaneous energy. They tend to be on the competitive side, often assuming that a competitive mindset is a necessity in order to achieve success in life. With their driven, action-oriented attitudes, they rarely waste time thinking about the past. In fact, they excel at keeping their attention rooted in their present – so much so that they rarely find themselves fixated on the time throughout the day.
                                     ""","""
                                     Theory, abstract concepts, and plodding discussions about global issues and their implications don’t keep ESTP personalities interested for long. They keep their conversations energetic, with a good dose of intelligence, but they like to talk about what is – or better yet, to just go out and do it. They often leap before they look, fixing their mistakes as they go rather than sitting idle and preparing contingencies and escape clauses.
                                     ""","""
                                     Sometimes ESTPs’ instantaneous observation and action is just what’s required, as in some corporate environments, and especially in emergencies.
                                     """], tag: "types", color: "yellow"),
        pData(title: "ESFP", detail: [ """
                                     ESFP (Entertainer) is a personality type with the Extraverted, Observant, Feeling, and Prospecting traits. These people love vibrant experiences, engaging in life eagerly and taking pleasure in discovering the unknown. They can be very social, often encouraging others into shared activities.
                                     ""","""
                                     Live for each second without hesitation.
                                     ""","""
                                     ELTON JOHN
                                     ""","""
                                     If anyone is to be found spontaneously breaking into song and dance, it is people with the ESFP personality type (Entertainers). They get caught up in the excitement of the moment and want everyone else to feel that way too. No other type is as generous with their time and energy when it comes to encouraging others, and no other type does it with such irresistible style.
                                     """]
                                    , tag: "types", color: "yellow")
    ]
    
    static let PBasic: [pData] = [
        
    ]
}

