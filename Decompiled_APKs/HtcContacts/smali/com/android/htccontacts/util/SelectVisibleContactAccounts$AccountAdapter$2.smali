.class Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter$2;
.super Ljava/lang/Object;
.source "SelectVisibleContactAccounts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;

.field final synthetic val$account:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter$2;->this$0:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter$2;->val$account:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    iput-object p3, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter$2;->val$account:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    iget-object v1, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->setVisible(Z)V

    .line 283
    return-void
.end method
