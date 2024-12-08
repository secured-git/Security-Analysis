.class Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$1;
.super Ljava/lang/Object;
.source "StreetSuggestionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

.field private final synthetic val$street:Lcom/yopeso/lieferando/model/user/Street;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;Lcom/yopeso/lieferando/model/user/Street;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$1;->val$street:Lcom/yopeso/lieferando/model/user/Street;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->access$0(Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;)Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$1;->val$street:Lcom/yopeso/lieferando/model/user/Street;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;->onStreetSelected(Lcom/yopeso/lieferando/model/user/Street;)V

    .line 56
    return-void
.end method
