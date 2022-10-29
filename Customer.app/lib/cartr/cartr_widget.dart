import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CartrWidget extends StatefulWidget {
  const CartrWidget({Key? key}) : super(key: key);

  @override
  _CartrWidgetState createState() => _CartrWidgetState();
}

class _CartrWidgetState extends State<CartrWidget> {
  PagingController<DocumentSnapshot?, RetailerProductRecord>? _pagingController;
  Query? _pagingQuery;
  List<StreamSubscription?> _streamSubscriptions = [];

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '6xtp8k0f' /* Cart */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              PagedListView<DocumentSnapshot<Object?>?, RetailerProductRecord>(
                pagingController: () {
                  final Query<Object?> Function(Query<Object?>) queryBuilder =
                      (retailerProductRecord) => retailerProductRecord;
                  if (_pagingController != null) {
                    final query =
                        queryBuilder(RetailerProductRecord.collection);
                    if (query != _pagingQuery) {
                      // The query has changed
                      _pagingQuery = query;
                      _streamSubscriptions.forEach((s) => s?.cancel());
                      _streamSubscriptions.clear();
                      _pagingController!.refresh();
                    }
                    return _pagingController!;
                  }

                  _pagingController = PagingController(firstPageKey: null);
                  _pagingQuery = queryBuilder(RetailerProductRecord.collection);
                  _pagingController!.addPageRequestListener((nextPageMarker) {
                    queryRetailerProductRecordPage(
                      queryBuilder: (retailerProductRecord) =>
                          retailerProductRecord,
                      nextPageMarker: nextPageMarker,
                      pageSize: 25,
                      isStream: true,
                    ).then((page) {
                      _pagingController!.appendPage(
                        page.data,
                        page.nextPageMarker,
                      );
                      final streamSubscription =
                          page.dataStream?.listen((data) {
                        final itemIndexes = _pagingController!.itemList!
                            .asMap()
                            .map((k, v) => MapEntry(v.reference.id, k));
                        data.forEach((item) {
                          final index = itemIndexes[item.reference.id];
                          final items = _pagingController!.itemList!;
                          if (index != null) {
                            items.replaceRange(index, index + 1, [item]);
                            _pagingController!.itemList = {
                              for (var item in items) item.reference: item
                            }.values.toList();
                          }
                        });
                        setState(() {});
                      });
                      _streamSubscriptions.add(streamSubscription);
                    });
                  });
                  return _pagingController!;
                }(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                builderDelegate:
                    PagedChildBuilderDelegate<RetailerProductRecord>(
                  // Customize what your widget looks like when it's loading the first page.
                  firstPageProgressIndicatorBuilder: (_) => Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: SpinKitChasingDots(
                        color: Color(0xFFDA0C75),
                        size: 50,
                      ),
                    ),
                  ),

                  itemBuilder: (context, _, listViewIndex) {
                    final listViewRetailerProductRecord =
                        _pagingController!.itemList![listViewIndex];
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.network(
                          listViewRetailerProductRecord.imageUrl!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            listViewRetailerProductRecord.commodity!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              setState(() => FFAppState().cartre.remove(
                                  listViewRetailerProductRecord.reference));
                            },
                            child: Icon(
                              Icons.minimize,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('checkoutr');
                },
                text: FFLocalizations.of(context).getText(
                  'u5dg2wbw' /* Checkout */,
                ),
                options: FFButtonOptions(
                  width: 150,
                  height: 50,
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF262D34),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 1,
                  borderSide: BorderSide(
                    color: Color(0xFFDBE2E7),
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
