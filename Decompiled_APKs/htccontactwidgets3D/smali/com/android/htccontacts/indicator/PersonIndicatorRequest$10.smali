.class Lcom/android/htccontacts/indicator/PersonIndicatorRequest$10;
.super Landroid/database/ContentObserver;
.source "PersonIndicatorRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getSocialNetworkObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$10;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$10;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$10;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 975
    return-void
.end method
