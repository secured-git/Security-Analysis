.class public Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;
.super Ljava/lang/Object;
.source "RestaurantInfoDialog.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestaurantListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 247
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 11
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v10, 0x0

    .line 188
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3, p1}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$0(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 189
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmCorporateName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$2(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->companyInfo:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->companyLabel:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmCorporateName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$2(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->addressInfoImprint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->restaurnat_addressHeader:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->restaurnat_address_imprint:I

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v8}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressStreet()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v9}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressNumber()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 192
    iget-object v9, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v9}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v9}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 191
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getTelephone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$2(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->PhoneInfoImprint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->phone:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getTelephone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmFax()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 196
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$2(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->FaxInfoImprint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->fax:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmFax()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_2
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 198
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$2(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->EmailInfoImprint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->e_mail:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_3
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmContact()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 200
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$2(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->OwnerInfoImprint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->owner:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmContact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_4
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-nez v3, :cond_b

    .line 203
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTradeOffice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 204
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->tradeOfficeInfoImprint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->tradeOffice:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTradeOffice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_5
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 206
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->registerCourtInfoImprint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v4}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_6
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourtNr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 208
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->registerCourtNrImprint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v4}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourtNr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_7
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTaxIdNr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 210
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->taxIdNrNrImprint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->ust_nr:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTaxIdNr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_8
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmAdditionalContacts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 212
    const-string v1, ""

    .line 213
    .local v1, "email2":Ljava/lang/String;
    const-string v2, ""

    .line 214
    .local v2, "owner2":Ljava/lang/String;
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmAdditionalContacts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_c

    .line 230
    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 231
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->OwnerInfoImprint2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->OwnerInfoImprint2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :cond_a
    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 235
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->EmailInfoImprint2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->EmailInfoImprint2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    .end local v1    # "email2":Ljava/lang/String;
    .end local v2    # "owner2":Ljava/lang/String;
    :cond_b
    return-void

    .line 214
    .restart local v1    # "email2":Ljava/lang/String;
    .restart local v2    # "owner2":Ljava/lang/String;
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;

    .line 215
    .local v0, "adc":Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;
    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    :cond_d
    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    :cond_e
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->e_mail:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_f
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->owner:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
