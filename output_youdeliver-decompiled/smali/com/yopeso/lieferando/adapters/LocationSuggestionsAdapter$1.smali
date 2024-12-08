.class Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$1;
.super Ljava/lang/Object;
.source "LocationSuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

.field private final synthetic val$ls:Lcom/yopeso/lieferando/model/LocationSuggestion;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$1;->val$ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mCallback:Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$1;->val$ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 74
    return-void
.end method
