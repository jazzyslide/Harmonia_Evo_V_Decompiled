.class Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$3;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$3;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 1840
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "listitem"

    .prologue
    .line 1845
    const/4 v0, 0x1

    return v0
.end method
