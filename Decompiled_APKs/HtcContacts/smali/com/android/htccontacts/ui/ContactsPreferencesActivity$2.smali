.class Lcom/android/htccontacts/ui/ContactsPreferencesActivity$2;
.super Ljava/lang/Object;
.source "ContactsPreferencesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$2;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$2;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #calls: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->doSaveAction()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$100(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    .line 439
    return-void
.end method
