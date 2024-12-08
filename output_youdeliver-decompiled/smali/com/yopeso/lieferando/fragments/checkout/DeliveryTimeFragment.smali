.class public Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "DeliveryTimeFragment.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;


# instance fields
.field private mAllOpenings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

.field private mDateAdapter:Lcom/yopeso/lieferando/adapters/PreorderAdapter;

.field private mDatePicker:Landroid/widget/DatePicker;

.field private mInitDate:Ljava/util/Calendar;

.field private mMaxDate:Ljava/util/Calendar;

.field private mTimeSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected getTitle()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/yopeso/lieferando/R$string;->delivery_time_title:I

    return v0
.end method

.method public goBackToCheckout()V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v3, 0x0

    .line 54
    sget v1, Lcom/yopeso/lieferando/R$layout;->date_time_picker:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 58
    sget v1, Lcom/yopeso/lieferando/R$id;->TimeSpinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mTimeSpinner:Landroid/widget/Spinner;

    .line 60
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getWeekOpenings(Ljava/util/Date;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mAllOpenings:Ljava/util/ArrayList;

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    .line 62
    sget v1, Lcom/yopeso/lieferando/R$id;->DatePicker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mDatePicker:Landroid/widget/DatePicker;

    .line 65
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mAllOpenings:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mAllOpenings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mAllOpenings:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 67
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 68
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 70
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mMaxDate:Ljava/util/Calendar;

    .line 71
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mMaxDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mAllOpenings:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mAllOpenings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 73
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mMaxDate:Ljava/util/Calendar;

    const/16 v2, 0x3b

    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 74
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mMaxDate:Ljava/util/Calendar;

    const/16 v2, 0x17

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 77
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorder()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "day"

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1, v4}, Landroid/widget/DatePicker;->setVisibility(I)V

    .line 90
    :goto_0
    new-instance v1, Lcom/yopeso/lieferando/adapters/PreorderAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->delivery_time_spinner:I

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mAllOpenings:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/yopeso/lieferando/adapters/PreorderAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mDateAdapter:Lcom/yopeso/lieferando/adapters/PreorderAdapter;

    .line 91
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mDateAdapter:Lcom/yopeso/lieferando/adapters/PreorderAdapter;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->filterDays(I)V

    .line 92
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mTimeSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mDateAdapter:Lcom/yopeso/lieferando/adapters/PreorderAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    return-object v0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1, v4}, Landroid/widget/DatePicker;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 101
    .local v0, "newDate":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 103
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 105
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mInitDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 111
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mDateAdapter:Lcom/yopeso/lieferando/adapters/PreorderAdapter;

    invoke-virtual {v1, p4}, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->filterDays(I)V

    .line 112
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mDateAdapter:Lcom/yopeso/lieferando/adapters/PreorderAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mTimeSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 117
    :goto_1
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 108
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mTimeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onDeliveryTimeSelected(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 125
    invoke-static {}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->deleySelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mLastClickTime:J

    .line 127
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliverNow(Z)V

    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryTime(Ljava/util/Date;)V

    .line 129
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;->goBackToCheckout()V

    .line 131
    :cond_0
    return-void
.end method
