import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dictionary extends StatefulWidget {
  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";
  List<String> _suggestions = [];

  final List<Map<String, String>> _dictionaryEntries = [
    {
      'title': 'Ability',
      'content':
          'The quality of having the means or skill to do something. Ability is not permanent, can fluctuate throughout one’s life, and is another aspect of diversity in our communities. Disabilities do not necessarily limit people unless society imposes assumptions that do not account for the variation in people’s abilities.'
    },
    {
      'title': 'Ableism',
      'content':
          'The pervasive system of discrimination and exclusion that oppresses people who are disabled, including differences in mental, cognitive, emotional, and/or physical abilities, through attitudes, actions, or institutional policies.'
    },
    {
      'title': 'Ace',
      'content': 'An abbreviation of the word Asexual. See Asexual/Asexuality.'
    },
    {
      'title': 'AFAB',
      'content':
          'Assigned Female at Birth. The terms AFAB and AMAB are used by a wide range of individuals, including those who are transgender, non-binary, or intersex. While AFAB or AMAB may be useful for describing different trans or non-binary experiences, they are generally not considered identities in and of themselves. Calling a transman “AFAB,” for example, erases his identity as a man. Instead, use a person’s requested pronouns and self-description.'
    },
    {
      'title': 'Ageism',
      'content':
          'The pervasive system of prejudice and discrimination that marginalizes people based on their age. This can be perpetuated through stereotypes of youthfulness versus life at an older age and through oppressive policies that subordinate and exclude older folks. Ageism can impact different age groups besides older folks, such as younger people who are stereotyped as being unable to make big decisions.'
    },
    {
      'title': 'Agender',
      'content':
          'An identity under the non-binary and trans+ umbrella. Some agender people feel that they have no gender identity, while others feel that agender is itself a gender identity. This can be similar to or overlap with the experience of being gender neutral, or having a neutral gender identity. Also see Neutrois.'
    },
    {
      'title': 'Allistic',
      'content':
          'An adjective used to describe a person who is not autistic and is often used to emphasize the privilege of people who are not on the autism spectrum.'
    },
    {
      'title': 'Allosexism',
      'content':
          'The pervasive system of discrimination and exclusion that oppresses asexual people built out of the assumption that everyone does and should experience sexual attraction.'
    },
    {
      'title': 'Allosexual',
      'content':
          'A sexual orientation generally characterized by feeling sexual attraction or a desire for partnered sexuality.'
    },
    {
      'title': 'Allyship',
      'content':
          'The action of working to end oppression through support of, and as an advocate for, a group other than one’s own. LGBTQIA Allyship is the practice of confronting heterosexism, sexism, genderism, allosexism, and monosexism in oneself and others out of self-interest and a concern for the well being of lesbian, gay, bisexual, transgender, queer, intersex and asexual people. Is founded on the understanding that dismantling heterosexism, monosexism, trans oppression/trans misogyny/cissexism and allosexism is a social justice issue.'
    },
    {
      'title': 'AMAB',
      'content':
          'Assigned Male at Birth. The terms AFAB and AMAB are used by a wide range of individuals, including those who are transgender, non-binary, or intersex. While AFAB or AMAB may be useful for describing different trans or non-binary experiences, they are generally not considered identities in and of themselves. Calling a transman “AFAB,” for example, erases his identity as a man. Instead, use a person’s requested pronouns and self-description.'
    },
    {
      'title': 'Androgyne',
      'content':
          'A person with a gender that is both masculine and feminine or in between masculine and feminine. An androgynous person.'
    },
    {
      'title': 'Aromantic/Aro',
      'content':
          'A romantic orientation generally characterized by not feeling romantic attraction or a desire for romance. Aromantic people can be satisfied by friendship and other non-romantic relationships. Many aromantic people also identify with a sexual orientation, such as asexual, bisexual, etc.'
    },
    {
      'title': 'Asexual/Asexuality/Ace',
      'content':
          'A broad spectrum of sexual orientations generally characterized by feeling varying degrees of sexual attraction or a desire for partnered sexuality. Asexuality is distinct from celibacy, which is the deliberate abstention from sexual activity, despite sexual desire. Some asexual people do have sex and do experience varying levels of sexual attraction. There are many diverse ways of being asexual. A person who does not experience sexual attraction can experience other forms of attraction such as romantic attraction, physical attraction and emotional attraction, as these are separate aspects of a person’s identity. These may or may not correlate with each other - for instance, some people are physically and romantically attracted to women. However, others might be physically attracted to all genders and only emotionally attracted to men.'
    },
    {
      'title': 'Autism',
      'content':
          'A neurological variation encompassing a wide range of presentations and experiences. Common characteristics of autism include repetitive behavior and differences in social interaction, interpersonal relationships, and communication. For some people, their gender identity is significantly tied to their identity as an autistic person.'
    },
    {
      'title': 'BDSM',
      'content':
          'Bondage and Discipline, Dominance and Submission, Sadism and Masochism. BDSM refers to a wide spectrum of activities and forms of interpersonal relationships. While not always overtly sexual in nature, the activities and relationships within a BDSM context are almost always eroticized by the participants in some fashion. Many of these practices fall outside of commonly held social norms regarding sexuality and human relationships.'
    },
    {
      'title': 'Bear Community',
      'content':
          'A part of the queer community composed of queer cisgender, transgender, or gender variant men similar in physical looks and interests, most of them large, hairy, and on the masculine side of presentation. The community aims to provide spaces where one feels wanted, desired, and liked. It nourishes and values an individual’s process of making friends and learning self-care and self-love through the unity and support of the community. Bears, Cubs, Otters, Wolves, Chasers, Admirers and other wildlife comprise what has come to be known as the Brotherhood of Bears and/or the Bear community. See also: Ursula.'
    },
    {
      'title': 'Bigender',
      'content':
          'Having two genders, exhibiting characteristics of masculine and feminine roles.'
    },
    {
      'title': 'Binding',
      'content':
          'The process of reducing the appearance of breasts by wrapping or compressing the chest using various methods. Binding can be very gender-affirming for many people, however it must be done safely. Learn more about safe binding.'
    },
    {
      'title': 'Biphobia',
      'content':
          'Oppression, discrimination and hatred toward those who identify as bisexual, pansexual, and omnisexual. Biphobia can be present in both the LGBTQ+ and broader community. See also Monosexism.'
    },
    {
      'title': 'Bisexual/Bi',
      'content':
          'A person whose primary sexual and affectional orientation is toward people of the same and other genders, or towards people regardless of their gender. Some people may use bisexual and pansexual interchangeably.'
    },
    {
      'title': 'BlaQ/BlaQueer',
      'content':
          'Folks of Black/African descent and/or from the African diaspora who recognize their queerness/LGBTQIA identity as a salient identity attached to their Blackness and vice versa.'
    },
    {
      'title': 'Body Image',
      'content':
          'How a person feels, acts, and thinks about their body. Attitudes about our own body and bodies in general are shaped by our communities, families, cultures, media, and our own perceptions.'
    },
    {
      'title': 'Cisgender',
      'content':
          'A person whose gender identity matches their sex assigned at birth.'
    },
    {
      'title': 'Cisnormativity',
      'content':
          'The assumption that there are only two genders, that one\'s gender aligns with their sex assigned at birth, and that this is the norm.'
    },
    {
      'title': 'Cisgender',
      'content':
          'A person whose gender identity matches their sex assigned at birth.'
    },
    {
      'title': 'Cisnormativity',
      'content':
          'The assumption that there are only two genders, that one\'s gender aligns with their sex assigned at birth, and that this is the norm.'
    },
    {
      'title': 'Cissexism/Genderism',
      'content':
          'A system of discrimination that privileges cisgender people and oppresses those who do not conform to cis-normative constructs.'
    },
    {
      'title': 'Coming Out',
      'content':
          'The process of revealing one\'s sexual orientation or gender identity, with terms like "being out" and "outing" referring to the state of being open or involuntarily disclosed.'
    },
    {
      'title': 'Cross Dresser (CD)',
      'content':
          'Someone who dresses as a different gender than their assigned sex, without implications for sexual orientation or gender identity.'
    },
    {
      'title': 'Culture',
      'content':
          'The shared values, beliefs, customs, norms, and perceptions of a group that shape their way of life.'
    },
    {
      'title': 'Cultural Humility',
      'content':
          'An approach to engagement across differences, focusing on lifelong self-evaluation, addressing power imbalances, and developing partnerships for systemic advocacy.'
    },
    {
      'title': 'Deadname/Deadnaming',
      'content':
          'A deadname is a former name, usually the birth name, that a trans+/nonbinary person no longer uses. Using this name, whether intentionally or not, is referred to as deadnaming and is considered offensive and hurtful.'
    },
    {
      'title': 'Demisexual',
      'content':
          'A sexual orientation where a person feels sexual attraction only after forming an emotional bond. Demisexuals often experience sexual attraction less frequently and are on the asexual spectrum.'
    },
    {
      'title': 'Disability/(Dis)ability/Dis/ability',
      'content':
          'A social construct identifying any restriction or lack of ability to perform activities considered typical for a human, shaped by environments constructed for the dominant or typical person.'
    },
    {
      'title': 'Discrimination',
      'content':
          'Inequitable actions by members of a dominant group or its representatives against marginalized or minoritized groups.'
    },
    {
      'title': 'Drag/Drag King/Drag Queen',
      'content':
          'The theatrical performance of gender through dressing in clothing associated with a different gender. Drag queens perform in feminine attire; drag kings in masculine attire. Drag is a form of gender expression, not an indication of gender identity, and performers may identify with various sexual orientations.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 25),
            Center(
              child: Text(
                'PRIDE UMBRELLA',
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Get to know more about the LGBTQIA+ community.',
              style: GoogleFonts.poppins(
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: _searchController,
                style: GoogleFonts.poppins(fontSize: 13),
                decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: GoogleFonts.poppins(fontSize: 13),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value.toLowerCase();
                    _updateSuggestions();
                  });
                },
              ),
            ),
            const SizedBox(height: 35),
            ..._buildFilteredDictionaryCards(),
          ],
        ),
      ),
    );
  }

  void _updateSuggestions() {
    if (_searchQuery.isEmpty) {
      _suggestions.clear();
    } else {
      _suggestions = _dictionaryEntries
          .where(
              (entry) => entry['title']!.toLowerCase().contains(_searchQuery))
          .map((entry) => entry['title']!)
          .toList();
    }
  }

  List<Widget> _buildFilteredDictionaryCards() {
    List<Widget> filteredCards = [];
    for (var entry in _dictionaryEntries) {
      if (entry['title']!.toLowerCase().contains(_searchQuery) ||
          entry['content']!.toLowerCase().contains(_searchQuery)) {
        filteredCards.add(
            _buildDictionaryCard(context, entry['title']!, entry['content']!));
      }
    }
    return filteredCards;
  }

  Widget _buildDictionaryCard(
      BuildContext context, String title, String content) {
    return Center(
      child: Container(
        width: 300,
        child: Card(
          elevation: 2,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Center(
                      child: Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    content: SingleChildScrollView(
                      child: Text(
                        content,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
