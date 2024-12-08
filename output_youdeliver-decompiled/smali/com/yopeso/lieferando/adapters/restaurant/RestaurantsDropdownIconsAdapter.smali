.class public Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "RestaurantsDropdownIconsAdapter.java"

# interfaces
.implements Lcom/viewpagerindicator/IconPagerAdapter;


# static fields
.field private static final mIcons:[I


# instance fields
.field private mTabs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 18
    sget v2, Lcom/yopeso/lieferando/R$drawable;->icon_filter_filter:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 19
    sget v2, Lcom/yopeso/lieferando/R$drawable;->icon_cuisine_filter:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 20
    sget v2, Lcom/yopeso/lieferando/R$drawable;->icon_sort_filter:I

    aput v2, v0, v1

    .line 17
    sput-object v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;->mIcons:[I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$array;->dropdown_title_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;->mTabs:[Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;->mTabs:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getIconResId(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 49
    sget-object v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;->mIcons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 39
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    new-instance v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsFilterFragment;

    invoke-direct {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsFilterFragment;-><init>()V

    goto :goto_0

    .line 34
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->getInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_2
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;

    invoke-direct {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;-><init>()V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;->mTabs:[Ljava/lang/String;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;->mTabs:[Ljava/lang/String;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
