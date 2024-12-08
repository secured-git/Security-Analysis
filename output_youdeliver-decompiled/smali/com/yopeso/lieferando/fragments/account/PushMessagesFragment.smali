.class public Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "PushMessagesFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/PushMessageSelectedCallback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    return-void
.end method

.method public static marAsReadPushMessage(J)V
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 149
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    :cond_1
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->saveMessages()V

    .line 158
    return-void

    .line 150
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/PushMessage;

    .line 151
    .local v0, "message":Lcom/yopeso/lieferando/model/PushMessage;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/PushMessage;->getId()J

    move-result-wide v2

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 152
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/PushMessage;->setRead(Z)V

    goto :goto_0
.end method

.method private navigateTo(Lcom/yopeso/lieferando/model/PushMessage;)V
    .locals 18
    .param p1, "message"    # Lcom/yopeso/lieferando/model/PushMessage;

    .prologue
    .line 162
    invoke-static {}, Lcom/yopeso/lieferando/custom/LRActivity;->cancelDialogs()V

    .line 163
    if-eqz p1, :cond_1

    const-string v13, "go_home"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    if-eqz p1, :cond_3

    const-string v13, "go_to_orders_action"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 171
    sget v13, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v14, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;

    invoke-direct {v14}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;-><init>()V

    const/4 v15, 0x1

    sget-object v16, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->TAG:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    check-cast v13, Lcom/yopeso/lieferando/custom/LRActivity;

    sget v14, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v15, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-direct {v15}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;-><init>()V

    invoke-virtual {v13, v14, v15}, Lcom/yopeso/lieferando/custom/LRActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 178
    :cond_3
    if-eqz p1, :cond_5

    const-string v13, "go_to_stamps_action"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 181
    sget v13, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v14, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-direct {v14}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;-><init>()V

    const/4 v15, 0x1

    sget-object v16, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->TAG:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    check-cast v13, Lcom/yopeso/lieferando/custom/LRActivity;

    sget v14, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v15, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-direct {v15}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;-><init>()V

    const/16 v16, 0x1

    sget-object v17, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->TAG:Ljava/lang/String;

    invoke-virtual/range {v13 .. v17}, Lcom/yopeso/lieferando/custom/LRActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_5
    if-eqz p1, :cond_7

    const-string v13, "go_to_favourites_action"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 192
    sget v13, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v14, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;

    invoke-direct {v14}, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;-><init>()V

    const/4 v15, 0x1

    sget-object v16, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;->TAG:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    check-cast v13, Lcom/yopeso/lieferando/custom/LRActivity;

    sget v14, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v15, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-direct {v15}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;-><init>()V

    const/16 v16, 0x1

    sget-object v17, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    invoke-virtual/range {v13 .. v17}, Lcom/yopeso/lieferando/custom/LRActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :cond_7
    if-eqz p1, :cond_9

    const-string v13, "go_to_fidelity_action"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 203
    sget v13, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v14, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;

    invoke-direct {v14}, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;-><init>()V

    const/4 v15, 0x1

    sget-object v16, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;->TAG:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    check-cast v13, Lcom/yopeso/lieferando/custom/LRActivity;

    sget v14, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v15, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-direct {v15}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;-><init>()V

    const/16 v16, 0x1

    sget-object v17, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->TAG:Ljava/lang/String;

    invoke-virtual/range {v13 .. v17}, Lcom/yopeso/lieferando/custom/LRActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_9
    if-eqz p1, :cond_b

    const-string v13, "go_to_order_action"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 212
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v2, "b":Landroid/os/Bundle;
    const-string v13, "order_id_key"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getData()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v13, "msg_key"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v7, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;

    invoke-direct {v7}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;-><init>()V

    .line 216
    .local v7, "orderFragment":Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;
    invoke-virtual {v7, v2}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 217
    sget v13, Lcom/yopeso/lieferando/R$id;->RightPane:I

    const/4 v14, 0x1

    sget-object v15, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->TAG:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7, v14, v15}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v7    # "orderFragment":Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;
    :cond_a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 221
    .restart local v2    # "b":Landroid/os/Bundle;
    const-string v13, "order_id_key"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getData()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v13, "msg_key"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v7, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-direct {v7}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;-><init>()V

    .line 224
    .local v7, "orderFragment":Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
    invoke-virtual {v7, v2}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    check-cast v13, Lcom/yopeso/lieferando/custom/LRActivity;

    sget v14, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-virtual {v13, v14, v7}, Lcom/yopeso/lieferando/custom/LRActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 229
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v7    # "orderFragment":Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
    :cond_b
    if-eqz p1, :cond_c

    const-string v13, "webad_action"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getData()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/yopeso/lieferando/dialogs/WebAdDialog;->newInstance(Ljava/lang/String;)Lcom/yopeso/lieferando/dialogs/WebAdDialog;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v14

    const-string v15, "web_dialog_fragment"

    invoke-virtual {v13, v14, v15}, Lcom/yopeso/lieferando/dialogs/WebAdDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_c
    if-eqz p1, :cond_d

    const-string v13, "push_list_action"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 235
    new-instance v6, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v6}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>()V

    .line 236
    .local v6, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getData()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setCityId(I)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v6}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurantListPush(Landroid/content/Context;Lcom/yopeso/lieferando/model/LocationSuggestion;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 241
    .end local v6    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getVoucher()Ljava/lang/String;

    move-result-object v8

    .line 243
    .local v8, "vCode":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getExpr()Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "vExpDate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getVoucher_text()Ljava/lang/String;

    move-result-object v10

    .line 246
    .local v10, "vText":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 248
    .local v5, "expDate":Ljava/util/Date;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 253
    :goto_1
    new-instance v11, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-direct {v11, v8, v10, v14, v15}, Lcom/yopeso/lieferando/model/user/BonusVoucher;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 254
    .local v11, "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    invoke-static {v11}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->newInstance(Lcom/yopeso/lieferando/model/user/BonusVoucher;)Lcom/yopeso/lieferando/dialogs/VoucherDialog;

    move-result-object v12

    .line 255
    .local v12, "voucherDialog":Lcom/yopeso/lieferando/dialogs/VoucherDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    .end local v11    # "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    .end local v12    # "voucherDialog":Lcom/yopeso/lieferando/dialogs/VoucherDialog;
    :catch_0
    move-exception v4

    .line 250
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v4    # "e":Ljava/text/ParseException;
    .end local v5    # "expDate":Ljava/util/Date;
    .end local v8    # "vCode":Ljava/lang/String;
    .end local v9    # "vExpDate":Ljava/lang/String;
    .end local v10    # "vText":Ljava/lang/String;
    :cond_e
    if-eqz p1, :cond_f

    const-string v13, "go_to_rating_action"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 260
    invoke-static {}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->newInstance()Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;

    move-result-object v3

    .line 261
    .local v3, "dialog":Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    sget-object v14, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .end local v3    # "dialog":Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;
    :cond_f
    if-eqz p1, :cond_0

    const-string v13, "show_doalog_action"

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/PushMessage;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/yopeso/lieferando/dialogs/VoucherRedeemDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->mNotificationManager:Landroid/app/NotificationManager;

    .line 57
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    sget v1, Lcom/yopeso/lieferando/R$layout;->push_messages_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    sget v1, Lcom/yopeso/lieferando/R$id;->ListDescription:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 66
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onDestroy()V

    .line 99
    return-void
.end method

.method public onMessageSelected(Lcom/yopeso/lieferando/model/PushMessage;)V
    .locals 11
    .param p1, "message"    # Lcom/yopeso/lieferando/model/PushMessage;

    .prologue
    const/4 v10, 0x1

    .line 103
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 108
    .local v1, "expDate":Ljava/util/Date;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/PushMessage;->getExpr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    :goto_0
    new-instance v3, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/PushMessage;->getVoucher()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/PushMessage;->getVoucher_text()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v3, v5, v6, v8, v9}, Lcom/yopeso/lieferando/model/user/BonusVoucher;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 113
    .local v3, "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->newInstance(Lcom/yopeso/lieferando/model/user/BonusVoucher;)Lcom/yopeso/lieferando/dialogs/VoucherDialog;

    move-result-object v4

    .line 114
    .local v4, "voucherDialog":Lcom/yopeso/lieferando/dialogs/VoucherDialog;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 130
    .end local v1    # "expDate":Ljava/util/Date;
    .end local v3    # "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    .end local v4    # "voucherDialog":Lcom/yopeso/lieferando/dialogs/VoucherDialog;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getMessages()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 131
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getMessages()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 139
    :cond_2
    :goto_2
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->saveMessages()V

    .line 140
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->notifyDataSetChanged()V

    .line 143
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/PushMessage;->getType_id()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 144
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->mNotificationManager:Landroid/app/NotificationManager;

    const v6, 0xf41e8

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 146
    return-void

    .line 109
    .restart local v1    # "expDate":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v1    # "expDate":Ljava/util/Date;
    :cond_3
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->navigateTo(Lcom/yopeso/lieferando/model/PushMessage;)V

    goto :goto_1

    .line 124
    :cond_4
    if-eqz p1, :cond_0

    const-string v5, "show_doalog_action"

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/PushMessage;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->navigateTo(Lcom/yopeso/lieferando/model/PushMessage;)V

    goto :goto_1

    .line 131
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/PushMessage;

    .line 132
    .local v2, "message1":Lcom/yopeso/lieferando/model/PushMessage;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/PushMessage;->getId()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/PushMessage;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 133
    invoke-virtual {p1, v10}, Lcom/yopeso/lieferando/model/PushMessage;->setRead(Z)V

    .line 134
    invoke-virtual {v2, v10}, Lcom/yopeso/lieferando/model/PushMessage;->setRead(Z)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 76
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 77
    sput v3, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    .line 78
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 79
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->MessagesListView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->noPushRL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->MessagesListView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->noPushRL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 87
    new-instance v1, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yopeso/lieferando/callback/PushMessageSelectedCallback;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;

    .line 88
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->MessagesListView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 89
    .local v0, "messageList":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
