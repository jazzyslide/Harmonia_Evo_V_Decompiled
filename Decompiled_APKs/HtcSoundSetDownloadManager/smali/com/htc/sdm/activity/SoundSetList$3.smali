.class Lcom/htc/sdm/activity/SoundSetList$3;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SoundSetList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$3;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$3;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v0}, Lcom/htc/sdm/activity/SoundSetList;->GotoDownloadPage()V

    .line 453
    return-void
.end method
