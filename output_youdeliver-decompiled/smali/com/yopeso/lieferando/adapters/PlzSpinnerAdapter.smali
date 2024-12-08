.class public Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PlzSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;",
        ">;"
    }
.end annotation


# instance fields
.field private mAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;->mAreas:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    if-nez p2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v2, Lcom/yopeso/lieferando/R$layout;->zip_spinner_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 39
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;->mAreas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 40
    .local v1, "sugg":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    sget v2, Lcom/yopeso/lieferando/R$id;->textView1:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getPlz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-object p2
.end method
