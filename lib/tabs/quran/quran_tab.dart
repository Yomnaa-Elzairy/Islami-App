import 'package:flutter/material.dart';
import 'package:islami_app/tabs/quran/Sura.dart';
import 'package:islami_app/tabs/quran/sura_service.dart';
import 'package:islami_app/views/sura_content.dart';
import 'package:islami_app/widgets/most_recently_item.dart';
import 'package:islami_app/widgets/sura_litem.dart';

// ignore: must_be_immutable
class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: TextField(
            style: TextStyle(color: Colors.white),
            onChanged: (query) {
              SuraService.search(query);

              setState(() {});
            },
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(32, 32, 32, 0.7),
              prefixIcon: ImageIcon(
                AssetImage("assets/images/quran.png"),
                color: Color(0xffE2BE7F),
                size: 20,
              ),
              hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              hintText: "Sura Name",
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffE2BE7F),
                  ),
                  borderRadius: BorderRadius.circular(8)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffE2BE7F),
                  ),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
        (SuraService.mostRecently.isEmpty)
            ? SizedBox()
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Text(
                  "Most Recently",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
        (SuraService.mostRecently.isEmpty)
            ? SizedBox()
            : SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: SuraService.mostRecently.length,
                    itemBuilder: (_, index) => MostRecentlyItem(
                          // index: SuraService.arabicSuraName.length - 1,
                          sura: SuraService.mostRecently[index],
                        )),
              ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Sura List",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(8),
            itemCount: SuraService.searchResults.length,
            separatorBuilder: (context, index) => Divider(
                  indent: 50,
                  endIndent: 50,
                ),
            itemBuilder: (context, index) {
              Sura sura = SuraService.searchResults[index];
              return GestureDetector(
                onTap: () async {
                  SuraService.addSuraToMostRecently(sura);
                  await Navigator.pushNamed(context, SuraContent.widgetName,
                      arguments: sura);
                  setState(() {});
                },
                child: SuraLitem(sura: sura),
              );
            }),
      ]),
    );
  }
}
