.class Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;
.super Ljava/lang/Thread;
.source "HtcDivertedListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->addBlackSelectedContacts(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

.field final synthetic val$PeopleCandidates:Ljava/util/ArrayList;

.field final synthetic val$isSimArrays:[Z


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;Ljava/util/ArrayList;[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    iput-object p2, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;->val$PeopleCandidates:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;->val$isSimArrays:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, i:I
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;->val$PeopleCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 533
    .local v2, id:I
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 534
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;->val$isSimArrays:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_0

    .line 535
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    invoke-static {v4, v3, v7}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 539
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 540
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    invoke-static {v4, v3, v7}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 543
    .end local v2           #id:I
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 545
    return-void
.end method
