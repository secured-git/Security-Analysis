.class public Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MealOptionsAndExtrasListAdapter.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/NumberPickerDialogCallBakc;
.implements Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;


# static fields
.field private static final VIEW_CHILD_TYPE_ADDITION:I = 0x0

.field private static final VIEW_CHILD_TYPE_OBSERVATIONS:I = 0x1

.field private static final VIEW_TYPE_ADDITION:I = 0x0

.field private static final VIEW_TYPE_ADD_ORDER:I = 0x2

.field public static final VIEW_TYPE_OBSERVATION:I = 0x1


# instance fields
.field private mAddToChartButton:Landroid/widget/Button;

.field private mAddToChartButtonPrise:Landroid/widget/TextView;

.field private mAddToChartRL:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mGroupViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

.field private mOptionErrorFrags:Landroid/util/SparseBooleanArray;

.field private mOptionListIsCreated:Z

.field private mOptionalNotes:Ljava/lang/String;

.field private mOptionalNotesTextView:Landroid/widget/TextView;

.field private mSize:Lcom/yopeso/lieferando/model/meal/Size;

.field private mTotalGroupView:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionListIsCreated:Z

    .line 91
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mGroupViews:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionErrorFrags:Landroid/util/SparseBooleanArray;

    .line 95
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionListIsCreated:Z

    return v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionErrorFrags:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionListIsCreated:Z

    return-void
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Landroid/widget/LinearLayout;I)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->removeViewWithId(Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method static synthetic access$12(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionalNotes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Lcom/yopeso/lieferando/model/meal/Size;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getExtraText(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mListener:Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V
    .locals 0

    .prologue
    .line 843
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setPriceToAddButton()V

    return-void
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;ILcom/yopeso/lieferando/model/meal/MealAdditionGroup;Z)V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0, p1, p2, p3}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->refreshOptionHeader(ILcom/yopeso/lieferando/model/meal/MealAdditionGroup;Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V
    .locals 0

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->onMealChanged()V

    return-void
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->addNewView(Landroid/view/View;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private addNewView(Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/widget/LinearLayout;

    .prologue
    .line 329
    const/4 v8, -0x2

    const/4 v9, -0x2

    :try_start_0
    invoke-virtual {p1, v8, v9}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    const-class v8, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "addNewView"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/16 v8, 0xa

    const/16 v9, 0xa

    const/16 v10, 0xa

    const/16 v11, 0xa

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 335
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 336
    .local v4, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x28

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/16 v11, 0xa

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 337
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 340
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 341
    .local v6, "newRow":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 342
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    .end local v6    # "newRow":Landroid/widget/LinearLayout;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->markIncompleteSelection()V

    .line 371
    return-void

    .line 330
    .end local v4    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    const-class v8, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "child.measure:"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 348
    .local v2, "lastLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .line 349
    .local v3, "lastLayoutWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-lt v1, v8, :cond_2

    .line 352
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v5, v8

    .line 354
    .local v5, "measureWidth":F
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_1

    .line 355
    iget-object v8, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$dimen;->meal_item_selected_layout_widht:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v5, v8

    .line 357
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    sub-float v9, v5, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 359
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 350
    .end local v5    # "measureWidth":F
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v3, v8

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 362
    .restart local v5    # "measureWidth":F
    :cond_3
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 363
    .restart local v6    # "newRow":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 364
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 365
    .restart local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private createOptionList(Landroid/widget/LinearLayout;ILandroid/view/ViewGroup;)V
    .locals 22
    .param p1, "parentView"    # Landroid/widget/LinearLayout;
    .param p2, "groupPosition"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 149
    .local v15, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .line 150
    .local v7, "additionGroup":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mGroupViews:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 151
    .local v13, "groupView":Landroid/view/View;
    if-eqz v13, :cond_0

    .line 152
    sget v4, Lcom/yopeso/lieferando/R$id;->selectedItemLayout:I

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 153
    .local v10, "itemsSelected":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mGroupViews:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    sget v5, Lcom/yopeso/lieferando/R$id;->LayoutWithSelectedItem:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 154
    .local v8, "layoutWithSelectedItem":Landroid/widget/RelativeLayout;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getAdditions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v14, v4, :cond_1

    .line 253
    .end local v8    # "layoutWithSelectedItem":Landroid/widget/RelativeLayout;
    .end local v10    # "itemsSelected":Landroid/widget/LinearLayout;
    .end local v14    # "i":I
    :cond_0
    return-void

    .line 155
    .restart local v8    # "layoutWithSelectedItem":Landroid/widget/RelativeLayout;
    .restart local v10    # "itemsSelected":Landroid/widget/LinearLayout;
    .restart local v14    # "i":I
    :cond_1
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getAdditions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yopeso/lieferando/model/meal/Addition;

    .line 156
    .local v9, "addition":Lcom/yopeso/lieferando/model/meal/Addition;
    sget v4, Lcom/yopeso/lieferando/R$layout;->option_cell:I

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 157
    .local v12, "child":Landroid/view/View;
    sget v4, Lcom/yopeso/lieferando/R$id;->checkBox:I

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 158
    .local v11, "check":Landroid/widget/CheckBox;
    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/meal/Addition;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    :cond_2
    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/meal/Addition;->getCost()I

    move-result v4

    if-lez v4, :cond_4

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/meal/Addition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->price:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v18

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/meal/Addition;->getCost()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_1
    new-instance v4, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;

    move-object/from16 v5, p0

    move/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;ILcom/yopeso/lieferando/model/meal/MealAdditionGroup;Landroid/widget/RelativeLayout;Lcom/yopeso/lieferando/model/meal/Addition;Landroid/widget/LinearLayout;)V

    invoke-virtual {v11, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getAdditions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 249
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionListIsCreated:Z

    .line 154
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 164
    :cond_4
    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/meal/Addition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private getExtraText(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cost"    # I
    .param p3, "numberOfExtra"    # I

    .prologue
    .line 279
    if-nez p2, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    int-to-float v6, p2

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private markIncompleteSelection()V
    .locals 5

    .prologue
    .line 683
    const/4 v2, 0x0

    .line 684
    .local v2, "incomplete":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 692
    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setIncomplete(Z)V

    .line 693
    return-void

    .line 685
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .line 686
    .local v0, "additionGroup":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 687
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionErrorFrags:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 688
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mListener:Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    invoke-interface {v3, v1}, Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;->expandTheGroup(I)V

    .line 689
    const/4 v2, 0x1

    .line 684
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private onMealChanged()V
    .locals 2

    .prologue
    .line 871
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 872
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/MealItemChangedEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/MealItemChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 873
    return-void
.end method

.method private reOrderOptionItems(Landroid/widget/LinearLayout;)V
    .locals 8
    .param p1, "parent"    # Landroid/widget/LinearLayout;

    .prologue
    .line 409
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v1, "childs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 420
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 421
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 440
    return-void

    .line 412
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 413
    .local v0, "child":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 417
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 418
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 415
    .local v3, "item":Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 421
    .end local v0    # "child":Landroid/widget/LinearLayout;
    .end local v3    # "item":Landroid/view/View;
    .end local v5    # "j":I
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 422
    .restart local v3    # "item":Landroid/view/View;
    invoke-direct {p0, v3, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->addNewView(Landroid/view/View;Landroid/widget/LinearLayout;)V

    goto :goto_1
.end method

.method private refreshOptionHeader(ILcom/yopeso/lieferando/model/meal/MealAdditionGroup;Z)V
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "additionGroup"    # Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    .param p3, "isExpanded"    # Z

    .prologue
    const v7, 0x106000b

    const/16 v6, 0xe

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 725
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mGroupViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 726
    .local v0, "view":Landroid/widget/LinearLayout;
    sget v1, Lcom/yopeso/lieferando/R$id;->itemsSelectedRaport:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMaxChoices()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v1

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMaxChoices()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v1

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 729
    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    sget v1, Lcom/yopeso/lieferando/R$id;->groupView:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$drawable;->green_block_top_dish_option_list_new:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 732
    sget v1, Lcom/yopeso/lieferando/R$id;->optionName:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    sget v1, Lcom/yopeso/lieferando/R$id;->itemsSelectedRaport:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 734
    if-eqz p3, :cond_0

    .line 735
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->minus_green_btn_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 736
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u2013"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->menu_extra_green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 738
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 786
    :goto_0
    return-void

    .line 743
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->minus_green_btn_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 744
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->menu_extra_green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 746
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v4, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionErrorFrags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 750
    sget v1, Lcom/yopeso/lieferando/R$id;->groupView:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$drawable;->white_block_bottom_dish_option_list_error_new:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 752
    sget v1, Lcom/yopeso/lieferando/R$id;->optionName:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 753
    sget v1, Lcom/yopeso/lieferando/R$id;->itemsSelectedRaport:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 754
    if-eqz p3, :cond_2

    .line 756
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->minus_grey_btn_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 757
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u2013"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->menu_extra_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 759
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 762
    :cond_2
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->minus_grey_btn_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 763
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->menu_extra_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v4, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 768
    :cond_3
    sget v1, Lcom/yopeso/lieferando/R$id;->groupView:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$drawable;->white_block_option_expanded_new:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 770
    sget v1, Lcom/yopeso/lieferando/R$id;->optionName:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 771
    sget v1, Lcom/yopeso/lieferando/R$id;->itemsSelectedRaport:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 772
    if-eqz p3, :cond_4

    .line 774
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->minus_grey_btn_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 775
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u2013"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->menu_extra_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 777
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 780
    :cond_4
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->minus_grey_btn_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 781
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->menu_extra_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 783
    sget v1, Lcom/yopeso/lieferando/R$id;->plusMinusButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v4, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method private removeViewWithId(Landroid/widget/LinearLayout;I)V
    .locals 4
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "id"    # I

    .prologue
    .line 378
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 389
    :goto_1
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->reOrderOptionItems(Landroid/widget/LinearLayout;)V

    .line 390
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->markIncompleteSelection()V

    .line 403
    return-void

    .line 379
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 380
    .local v0, "child":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 381
    .local v2, "layout":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 382
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 383
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 384
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 378
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setIncomplete(Z)V
    .locals 2
    .param p1, "incomplete"    # Z

    .prologue
    .line 696
    if-eqz p1, :cond_2

    .line 698
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButton:Landroid/widget/Button;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->button_grey_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartRL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartRL:Landroid/widget/RelativeLayout;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->button_grey_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 721
    :cond_1
    :goto_0
    return-void

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButton:Landroid/widget/Button;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->button_green_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 709
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 714
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartRL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartRL:Landroid/widget/RelativeLayout;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->button_green_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 716
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private setPriceToAddButton()V
    .locals 8

    .prologue
    .line 844
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$string;->add_to_cart_button_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButtonPrise:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$string;->dish_cost:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/Size;->getTotalCost()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 814
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 812
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x2

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getChildType(II)I

    move-result v1

    .line 110
    .local v1, "type":I
    const/4 v2, -0x1

    .line 111
    .local v2, "type2":I
    if-eqz p4, :cond_0

    .line 112
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 114
    :cond_0
    if-eqz p4, :cond_1

    if-eq v1, v2, :cond_2

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 116
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getChildType(II)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 125
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getChildType(II)I

    move-result v3

    if-nez v3, :cond_3

    .line 139
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionListIsCreated:Z

    .line 140
    sget v3, Lcom/yopeso/lieferando/R$id;->OptionList:I

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, p1, p5}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->createOptionList(Landroid/widget/LinearLayout;ILandroid/view/ViewGroup;)V

    .line 143
    :cond_3
    return-object p4

    .line 118
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    :pswitch_0
    sget v3, Lcom/yopeso/lieferando/R$layout;->options_list:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 119
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    sget v3, Lcom/yopeso/lieferando/R$id;->OptionList:I

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, p1, p5}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->createOptionList(Landroid/widget/LinearLayout;ILandroid/view/ViewGroup;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 454
    :goto_0
    :pswitch_0
    return v0

    .line 448
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 460
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mTotalGroupView:I

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 470
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 800
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 801
    const/4 v0, 0x0

    .line 805
    :goto_0
    return v0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 803
    const/4 v0, 0x1

    goto :goto_0

    .line 805
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x3

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 475
    invoke-virtual/range {p0 .. p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupType(I)I

    move-result v13

    .line 476
    .local v13, "tag":I
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v13, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mGroupViews:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 477
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 478
    .local v12, "li":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 612
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mGroupViews:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mGroupViews:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 614
    invoke-virtual/range {p0 .. p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupType(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionErrorFrags:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 621
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 679
    :cond_3
    :goto_2
    return-object p3

    .line 480
    .restart local v12    # "li":Landroid/view/LayoutInflater;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .line 481
    .local v6, "additionGroup":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    sget v4, Lcom/yopeso/lieferando/R$layout;->group_options:I

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 482
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 484
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v4

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionErrorFrags:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mListener:Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;->expandTheGroup(I)V

    .line 487
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setIncomplete(Z)V

    .line 490
    :cond_4
    if-nez p1, :cond_5

    .line 491
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v4

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v5

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v8

    .line 492
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v9

    .line 491
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 494
    :cond_5
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v4

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    move-result v5

    if-lt v4, v5, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v4

    if-eqz v4, :cond_1

    .line 495
    sget v4, Lcom/yopeso/lieferando/R$id;->groupView:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$drawable;->white_block_option_expanded_new:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 499
    sget v4, Lcom/yopeso/lieferando/R$id;->selectedItemLayout:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 500
    .local v11, "layout":Landroid/widget/LinearLayout;
    sget v4, Lcom/yopeso/lieferando/R$id;->LayoutWithSelectedItem:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 501
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getAdditions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yopeso/lieferando/model/meal/Addition;

    .line 502
    .local v7, "addition":Lcom/yopeso/lieferando/model/meal/Addition;
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Addition;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 505
    .local v15, "vi":Landroid/view/LayoutInflater;
    sget v4, Lcom/yopeso/lieferando/R$layout;->extra_add_menu_item:I

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 506
    .local v14, "v":Landroid/view/View;
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Addition;->getId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v14, v4}, Landroid/view/View;->setId(I)V

    .line 507
    sget v4, Lcom/yopeso/lieferando/R$id;->closeButton:I

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Addition;->getId()J

    move-result-wide v8

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 508
    sget v4, Lcom/yopeso/lieferando/R$id;->extraName:I

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Addition;->getId()J

    move-result-wide v8

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 509
    sget v4, Lcom/yopeso/lieferando/R$id;->extraName:I

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Addition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Addition;->getCost()I

    move-result v8

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getExtraText(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    sget v4, Lcom/yopeso/lieferando/R$id;->closeButton:I

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Addition;->getMaxAmmount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    .line 523
    sget v4, Lcom/yopeso/lieferando/R$id;->extraName:I

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/TextView;

    new-instance v4, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;

    move-object/from16 v5, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;Lcom/yopeso/lieferando/model/meal/Addition;IZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->addNewView(Landroid/view/View;Landroid/widget/LinearLayout;)V

    goto/16 :goto_3

    .line 557
    .end local v6    # "additionGroup":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    .end local v7    # "addition":Lcom/yopeso/lieferando/model/meal/Addition;
    .end local v11    # "layout":Landroid/widget/LinearLayout;
    .end local v14    # "v":Landroid/view/View;
    .end local v15    # "vi":Landroid/view/LayoutInflater;
    :pswitch_1
    sget v4, Lcom/yopeso/lieferando/R$layout;->group_observation:I

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 558
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 559
    new-instance v4, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$4;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 569
    :pswitch_2
    sget v4, Lcom/yopeso/lieferando/R$layout;->add_to_cart_button_layout:I

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 570
    new-instance v10, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V

    .line 598
    .local v10, "addToCart":Landroid/view/View$OnClickListener;
    sget v4, Lcom/yopeso/lieferando/R$id;->AddToCartButton:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButton:Landroid/widget/Button;

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButton:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 601
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v4

    if-nez v4, :cond_8

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 604
    :cond_8
    sget v4, Lcom/yopeso/lieferando/R$id;->AddToCartButtonRL:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartRL:Landroid/widget/RelativeLayout;

    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    sget v4, Lcom/yopeso/lieferando/R$id;->AddToCartButtonPrise:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mAddToChartButtonPrise:Landroid/widget/TextView;

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setPriceToAddButton()V

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->markIncompleteSelection()V

    goto/16 :goto_0

    .line 618
    .end local v10    # "addToCart":Landroid/view/View$OnClickListener;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mGroupViews:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "convertView":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .restart local p3    # "convertView":Landroid/view/View;
    goto/16 :goto_1

    .line 623
    :pswitch_3
    if-nez p2, :cond_a

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionErrorFrags:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 626
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .line 627
    .restart local v6    # "additionGroup":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    sget v4, Lcom/yopeso/lieferando/R$id;->numberOfOption:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v8, p1, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v4

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 630
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionErrorFrags:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mListener:Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;->expandTheGroup(I)V

    .line 632
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setIncomplete(Z)V

    .line 635
    :cond_b
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    move-result v4

    if-lez v4, :cond_c

    .line 636
    sget v4, Lcom/yopeso/lieferando/R$id;->optionName:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 637
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$string;->min_extras:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v9, v16

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 636
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->refreshOptionHeader(ILcom/yopeso/lieferando/model/meal/MealAdditionGroup;Z)V

    .line 643
    if-eqz p2, :cond_e

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionErrorFrags:Landroid/util/SparseBooleanArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 648
    sget v4, Lcom/yopeso/lieferando/R$id;->groupView:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$drawable;->white_block_bottom_dish_option_list_error_new:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 639
    :cond_c
    sget v4, Lcom/yopeso/lieferando/R$id;->optionName:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 649
    :cond_d
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v4

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 650
    sget v4, Lcom/yopeso/lieferando/R$id;->groupView:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$drawable;->white_block_option_expanded_new:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 654
    :cond_e
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    .line 657
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v4

    if-nez v4, :cond_3

    .line 659
    sget v4, Lcom/yopeso/lieferando/R$id;->LayoutWithSelectedItem:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 666
    .end local v6    # "additionGroup":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    :pswitch_4
    sget v4, Lcom/yopeso/lieferando/R$id;->observationText:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionalNotesTextView:Landroid/widget/TextView;

    .line 667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionalNotesTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionalNotes:Ljava/lang/String;

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/yopeso/lieferando/R$string;->write_remarks_def_text:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    new-instance v4, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$6;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 667
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionalNotes:Ljava/lang/String;

    goto :goto_5

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 621
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public positivButtonPressed()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mListener:Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    invoke-interface {v0}, Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;->updateMealCostTextView()V

    .line 878
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setPriceToAddButton()V

    .line 879
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->onMealChanged()V

    .line 880
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 884
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setOptionalNotes(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mListener:Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    invoke-interface {v0, p1}, Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;->setOptionalNotesToCartItem(Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public setListener(Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;)V
    .locals 0
    .param p1, "listener"    # Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mListener:Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    .line 841
    return-void
.end method

.method public setOptionalNotes(Ljava/lang/String;)V
    .locals 1
    .param p1, "optionalNotes"    # Ljava/lang/String;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionalNotes:Ljava/lang/String;

    .line 861
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionalNotesTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mOptionalNotesTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    :cond_0
    return-void
.end method

.method public setSize(Lcom/yopeso/lieferando/model/meal/Size;)V
    .locals 1
    .param p1, "size"    # Lcom/yopeso/lieferando/model/meal/Size;

    .prologue
    .line 834
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    .line 836
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->mTotalGroupView:I

    .line 837
    return-void
.end method
