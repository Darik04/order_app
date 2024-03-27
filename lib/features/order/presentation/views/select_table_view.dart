import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/texts/text_styles.dart';
import 'package:kassa/core/widgets/btns/primary_btn.dart';
import 'package:kassa/features/order/presentation/views/select_products_view.dart';
import 'package:kassa/features/order/presentation/widgets/table_selecting_card.dart';


class SelectTableView extends StatefulWidget {
  const SelectTableView({super.key});

  @override
  State<SelectTableView> createState() => _SelectTableViewState();
}

class _SelectTableViewState extends State<SelectTableView> {

  final int countTables = 4;

  int? selectedTable;


  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorStyles.primary,
        title: Text('Выбрать стол', style: TextStyles.white20w700,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(countTables, (index) 
                  => SizedBox(
                    width: (mediaSize.width-50)/2,
                    child: TableSelectingCard(
                      title: 'Стол ${index+1}',
                      selected: selectedTable == index, 
                      onTap: (){
                        setState(() {
                          selectedTable = index;
                        });
                      }
                    ),
                  ),
                ).toList()
              ),
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selectedTable == null
      ? null
      : Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: PrimaryBtn(
          onTap: (){
            Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => SelectProductView(table: selectedTable ?? 0,)));
          },
          text: 'Выбрать',
          isArrow: true,
        )
      ),
    );
  }
}