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
    {
      'title': 'Enby',
      'content':
          'A slang term used for nonbinary. Enby is the phonetic pronunciation of “NB,” an abbreviation for nonbinary.'
    },
    {
      'title': 'Ethnicity',
      'content':
          'A social construct that divides people into smaller social groups based on characteristics such as shared sense of group membership, values, behavioral patterns, language, political and economic interests, history and ancestral geographical base.'
    },
    {'title': 'Euphoria', 'content': 'See “Gender Euphoria”.'},
    {
      'title': 'Femme',
      'content':
          'Historically used in the lesbian community to refer to a feminine lesbian, it is being increasingly used by other LGBTQIA people to describe gender expressions that reclaim and disrupt traditional constructs of femininity.'
    },
    {
      'title': 'FTM',
      'content':
          'Female to Male. Generally used to refer to anyone assigned female at birth whose affirmed gender identity or expression is masculine all or part of the time. Some people prefer the term ‘transitioning to male’ (or ‘male,’ ‘man’ or ‘trans man’), as this does not use misgendering language. This term is not used as often in the 2020s, but may be important in certain (e.g., medical) contexts.'
    },
    {
      'title': 'Gay',
      'content':
          'A sexual and affectional orientation toward people of the same gender. See Homosexual/Homosexuality.'
    },
    {
      'title': 'Gender',
      'content':
          'A social construct used to classify a person as a man, woman, or some other identity. Fundamentally different from the sex one is assigned at birth.'
    },
    {
      'title': 'Gender Affirming',
      'content':
          'A broad term encompassing actions, language, medical care, and more, that affirms someone’s gender identity or expression. For example, surgery that alters someone’s appearance to align with their gender identity is referred to as gender-affirming surgery.'
    },
    {
      'title': 'Gender Dysphoria',
      'content':
          'Used to describe when a person experiences discomfort or distress because there is a mismatch between their sex assigned at birth and their gender identity.'
    },
    {
      'title': 'Gender Variant',
      'content':
          'A person who varies from the expected characteristics of the assigned gender.'
    },
    {
      'title': 'Heterosexism',
      'content':
          'The assumption that all people are or should be heterosexual. Heterosexism excludes the needs, concerns, and life experiences of lesbian, gay, bisexual and queer people, while it gives advantages to heterosexual people. It is often a subtle form of oppression, which reinforces realities of silence and erasure.'
    },
    {
      'title': 'Heterosexuality',
      'content':
          'A sexual orientation in which a person feels physically attracted to people of a gender other than their own. See also Straight.'
    },
    {
      'title': 'Homophobia',
      'content':
          'Oppression, discrimination, and hatred directed toward members of the LGBTQ+ community.'
    },
    {
      'title': 'Homosexual/Homosexuality',
      'content':
          'An outdated term to describe a sexual orientation in which a person feels physically and emotionally attracted to people of the same gender.'
    },
    {
      'title': 'Heteronormativity',
      'content':
          'Attitudes and behaviors that incorrectly assume everyone is straight, or that being heterosexual is “normal”. Heteronormativity also assumes people should and will align with conventional expectations of society for sexual and romantic attraction.'
    },
    {
      'title': 'Internalized Oppression',
      'content':
          'The fear and self-hate of one\'s own identities, stemming from the acceptance of negative stereotypes and myths about their oppressed group.'
    },
    {
      'title': 'Intersectionality',
      'content':
          'A concept by Kimberlé Crenshaw describing how multiple systems of oppression interact in the lives of those with multiple marginalized identities, allowing for a more comprehensive analysis of social issues and more effective advocacy.'
    },
    {
      'title': 'Intersex',
      'content':
          'A term for a variety of natural body variations that do not fit conventional definitions of male or female, including differences in chromosomes, hormones, and reproductive or sexual anatomy.'
    },
    {
      'title': 'Kink',
      'content':
          '(Kinky, Kinkiness) Most commonly referred to as unconventional sexual practices, from which people derive varying forms of pleasure and consensually play out various forms of desires, fantasies, and scenes. Kink includes BDSM, leather, wax play, etc.'
    },
    {
      'title': 'Kinsey scale',
      'content':
          'The scale developed by Alfred Kinsey in the 1940s, which was used for measuring sexual attraction and behavior along a continuum.'
    },
    {
      'title': 'Latine',
      'content':
          'A non-gender-specific term for people of Latin American descent, created as a more easily pronounced alternative to Latinx. It does not assume a gender binary and includes non-binary individuals.'
    },
    {
      'title': 'Leather Community',
      'content':
          'A community of individuals who enjoy leather as part of their sexual activities, often linked to fetish-based communities such as BDSM and rubber. While often associated with the queer community, it is not exclusive to it.'
    },
    {
      'title': 'Lesbian',
      'content':
          'Typically, a woman whose primary sexual and romantic attraction is to other women. Some nonbinary people also identify as lesbians due to their connection to womanhood and attraction to women.'
    },
    {
      'title': 'LGBTQIA+',
      'content':
          'An acronym for Lesbian, Gay, Bisexual, Transgender, Queer, Intersex, and Asexual, with the “+” including other identities not specified. This term is used to refer to the diverse community as a whole.'
    },
    {
      'title': 'Lived Name',
      'content':
          'A name used by someone that differs from their legal name. Often adopted by trans and nonbinary people to affirm their gender identity. The term "lived name" is preferred over "preferred name" to avoid the implication that using it is optional, which can lead to deadnaming.'
    },
    {
      'title': 'Masculine of Center (MOC)',
      'content':
          'A term for individuals, including lesbian/queer women and trans folks, who lean towards the masculine side of the gender spectrum. This includes identities like butch, stud, aggressive/AG, dom, macha, tomboi, and trans-masculine.'
    },
    {
      'title': 'Microaggressions',
      'content':
          'Subtle, often unintentional behaviors that convey hostile or derogatory messages about oppressed identities, reinforcing stereotypes and causing harm.'
    },
    {
      'title': 'Misgendering',
      'content':
          'Incorrectly attributing a gender to someone that does not align with their gender identity, often through improper pronoun use or gendered language.'
    },
    {
      'title': 'MLM',
      'content':
          'Abbreviation for "men who love men," encompassing gay men and men attracted to both men and other genders.'
    },
    {
      'title': 'Monogamy',
      'content':
          'The practice of having only one intimate partner at a time, also known as serial monogamy.'
    },
    {
      'title': 'Monosexism',
      'content':
          'The belief that monosexuality (attraction to one gender) is superior, leading to the oppression of non-monosexual people.'
    },
    {
      'title': 'Monosexual',
      'content':
          'Individuals who are romantically, sexually, or affectionately attracted to one gender only, such as straight or gay people.'
    },
    {
      'title': 'MSM',
      'content':
          'Abbreviation for "men who have sex with men," who may or may not identify as gay.'
    },
    {
      'title': 'MTF',
      'content':
          '"Male to Female," referring to individuals assigned male at birth who identify or express themselves as feminine. This term is less commonly used in the 2020s, with preferences for terms like "trans woman."'
    },
    {
      'title': 'Multisexual',
      'content':
          'An umbrella term for attraction to more than one gender, including identities like bisexual, polysexual, and omnisexual. The terms can be used interchangeably for some, while others note important differences.'
    },
    {
      'title': 'Neopronouns',
      'content':
          'Gender-neutral pronouns like ze/zir or ey/em used instead of traditional ones like they/them.'
    },
    {
      'title': 'Neurodiversity',
      'content':
          'The natural variation in human brain function, including conditions like autism, ADHD, and dyslexia. Celebrates diverse forms of thinking and self-expression without seeking to cure or correct differences.'
    },
    {
      'title': 'Neurodivergent (ND)',
      'content':
          'Having a brain that functions differently from societal norms, encompassing various conditions such as autism and dyslexia. The term was coined by activist Kassiane Asasumasu.'
    },
    {
      'title': 'Neurotypical (NT)',
      'content':
          'Having neurocognitive functioning that aligns with dominant societal norms.'
    },
    {
      'title': 'Neutrois',
      'content':
          'A non-binary gender identity that can include being neutral-gender, null-gender, neither male nor female, genderless, or agender.'
    },
    {
      'title': 'Nonbinary',
      'content':
          'A gender identity that moves beyond the male/female binary, encompassing a wide range of expressions and ways of being. It can overlap with concepts like gender expansive and gender non-conforming.'
    },
    {
      'title': 'Omnigender',
      'content':
          'Possessing all genders. The term is used specifically to refute the concept of only two genders.'
    },
    {
      'title': 'Oppression',
      'content':
          'Exists when one social group, whether knowingly or unconsciously, exploits another social group for its own benefit.'
    },
    {
      'title': 'Orientation',
      'content':
          'Orientation is one’s attraction or non-attraction to other people. An individual’s orientation can be fluid and people use a variety of labels to describe their orientation. Some, but not all, types of attraction or orientation include: romantic, sexual, sensual, aesthetic, intellectual and platonic.'
    },
    {
      'title': 'Pansexual (Pan), Omnisexual (Omni)',
      'content':
          'People who have romantic, sexual, or affectional attraction to individuals of all genders and sexes. Overlaps with bisexuality and polysexuality.'
    },
    {
      'title': 'Passing',
      'content':
          'When a trans individual is perceived as cisgender. Often seen as a form of privilege but can impose unrealistic expectations to conform to cisnormativity. Also applies to gay/lesbian/queer individuals being perceived as straight.'
    },
    {
      'title': 'Phobia',
      'content':
          'An excessive fear disproportionate to the actual threat. Historically misused to describe systems of oppression (e.g., homophobia referring to heterosexism).'
    },
    {
      'title': 'Polyamory/Poly',
      'content':
          'Consensually engaging in or being open to multiple loving relationships simultaneously. Sometimes considered a relationship orientation and an umbrella term for ethical non-monogamy.'
    },
    {
      'title': 'Polycule',
      'content':
          'A network of people in emotionally, sexually, or romantically connected relationships, each with its own structures and boundaries.'
    },
    {
      'title': 'Polygender, Pangender',
      'content':
          'Identifying with multiple genders, challenging the concept of a gender binary.'
    },
    {
      'title': 'Polysexual',
      'content':
          'Attraction to more than one gender, distinct from polyamory and overlapping with bisexuality and pansexuality.'
    },
    {
      'title': 'Positive',
      'content':
          'Shortened term for HIV positive, used to voluntarily disclose one\'s status.'
    },
    {
      'title': 'Privilege',
      'content':
          'Unearned benefits given to people in specific social groups. Originates from W.E.B. DuBois\' concept of "psychological wage" and expanded by Peggy McIntosh\'s work on unearned white privileges.'
    },
    {
      'title': 'Pronouns',
      'content':
          'Words used to refer to someone in the third person, such as they/them, ze/hir, she/her, and he/him. Pronouns can be tied to gender and are a common source of misgendering.'
    },
    {
      'title': 'QPOC/QTPOC/QTBIPOC',
      'content':
          'Acronyms for Queer People of Color, Queer Trans People of Color, and Queer Trans Black Indigenous People of Color, highlighting intersectional identities and their unique experiences of oppression.'
    },
    {
      'title': 'Queer',
      'content':
          'An umbrella term for gender/sexual/romantic orientations or identities outside societal norms. Historically a slur, it has been reclaimed by some in the LGBTQ+ community as a celebration of nonconformity. Not universally accepted, especially by older generations, and considered offensive if used by non-LGBTQ+ individuals.'
    },
    {
      'title':
          'Queer Platonic Relationship (QPR)/Queer Platonic Partnership (QPP)',
      'content':
          'Relationships that blend elements of platonic, romantic, and sexual relationships, often involving commitment and intimacy. Frequently embraced by asexual and aromantic individuals for their unique interpersonal needs.'
    },
    {
      'title': 'Questioning',
      'content':
          'The process of exploring one\'s gender identity, gender expression, and/or sexual orientation. Some use this term to identify themselves within the LGBTQIA community.'
    },
    {
      'title': 'Race',
      'content':
          'A social construct dividing people based on physical appearance, ancestry, and cultural affiliation, influenced by societal context.'
    },
    {
      'title': 'Racism',
      'content':
          'Systemic subordination of marginalized racial groups, perpetuated by those in power. Individual acts of discrimination often stem from systemic racism.'
    },
    {
      'title': 'Romantic Orientation',
      'content':
          'Attraction or non-attraction to others characterized by expressions of love, with labels that can vary and may be fluid.'
    },
    {
      'title': 'Same Gender Loving',
      'content':
          'A term used by some African American people who love, date, or have attraction to people of the same gender.'
    },
    {
      'title': 'Sapphic',
      'content':
          'Used to describe any female-identifying person who is attracted to other female-identifying people. This broad term includes lesbians, bisexuals, omnisexuals, pansexuals, romantic asexuals, and other orientations, as well as nonbinary folks. Often sapphic is used as a more inclusive term instead of “women who like women (WLW)” or lesbian.'
    },
    {
      'title': 'Sex/Sex Assigned at Birth',
      'content':
          'A medically constructed categorization. Sex is often assigned based on the appearance of the genitalia, either in ultrasound or at birth. Sex assigned at birth is different from gender identity, and sex is not always binary, such as for Intersex individuals. See also Intersex, AFAB, and AMAB.'
    },
    {
      'title': 'Sexism',
      'content':
          'The cultural, institutional, and individual set of beliefs and practices that privilege men, subordinate women, and devalue ways of being that are associated with women.'
    },
    {
      'title': 'Sexuality',
      'content':
          'The components of a person that include their biological sex, sexual orientation, gender identity, sexual practices, etc.'
    },
    {
      'title': 'Trans',
      'content':
          'The term trans acts as a more inclusive term than transgender for gender non-conforming and non-binary folks.'
    },
    {
      'title': 'Trans man',
      'content':
          'Usually, a person assigned female at birth who identifies as a man. A person may choose to identify this way to capture their gender identity as well as their lived experience as a transgender person.'
    },
    {
      'title': 'Transfeminine/Transfem',
      'content':
          'A term used to describe a person, usually AMAB or Intersex, who identifies with femininity in some way. Includes Trans women, as well as other trans+ people who have a connection to femininity.'
    },
    {
      'title': 'Transmasculine/Transmasc',
      'content':
          'A term used to describe a person, usually AFAB or Intersex, who identifies with masculinity in some way. Includes Trans men, as well as other trans+ people who have a connection to masculinity.'
    },
    {
      'title': 'Transphobia',
      'content':
          'When people have deeply rooted negative beliefs about what it means to be transgender, nonbinary, and gender nonconforming. Their beliefs affect the way they, the government, organizations, the media, and society generally treat people whose identities don’t fit into typical gender roles.'
    },
    {
      'title': 'Undocumented',
      'content':
          'People who are born outside of the country to which they immigrated, who do not have documentation that grants legal rights related to residency and/or citizenship.'
    },
    {
      'title': 'Ursula',
      'content':
          'Some lesbians, particularly butch dykes, also participate in Bear culture referring to themselves with the distinct label Ursula.'
    },
    {
      'title': 'WLW',
      'content':
          'Abbreviation for Women who like Women. This term can include lesbians, bisexual/pansexual/omnisexual women, as well as other identities. Some prefer the term “sapphic”, as it is more inclusive of non-binary folks. See also Sapphic.'
    },
    {
      'title': 'Womxn',
      'content':
          'Some womxn spell the word with an “x” as a form of empowerment to move away from the “men” in the “traditional” spelling of women.'
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
                'PRIDE DICTIONARY',
                style: GoogleFonts.poppins(
                  fontSize: 30,
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
    // Update suggestions based on the search query and title only
    _suggestions = _dictionaryEntries
        .where((entry) => entry['title']!.toLowerCase().contains(_searchQuery))
        .map((entry) => entry['title']!)
        .toList();
  }

  List<Widget> _buildFilteredDictionaryCards() {
    List<Widget> filteredCards = [];
    // Filter dictionary entries based on the search query
    for (var entry in _dictionaryEntries) {
      if (entry['title']!.toLowerCase().contains(_searchQuery)) {
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
