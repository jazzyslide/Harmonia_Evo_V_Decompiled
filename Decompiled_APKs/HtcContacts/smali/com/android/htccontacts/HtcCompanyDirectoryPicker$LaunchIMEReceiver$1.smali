.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 868
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->access$2200(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 870
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->access$2308(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;)I

    .line 871
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$2400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$2502(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$2600(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->access$2200(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 877
    invoke-static {}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$2700()Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 879
    :cond_1
    return-void
.end method
