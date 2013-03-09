.class public Lcom/android/settings/CreateShortcut;
.super Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;
.source "CreateShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    .local v0, targetIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-super {p0}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->reviseActionBar()V

    .line 34
    return-void
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->onEvaluateShowIcons()Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 47
    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 48
    .local v1, shortcutIntent:Landroid/content/Intent;
    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    invoke-super {p0, v0, p3}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->appendIconToShortcutIntent(Landroid/content/Intent;I)V

    .line 57
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v3

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 59
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->finish()V

    .line 61
    return-void
.end method
