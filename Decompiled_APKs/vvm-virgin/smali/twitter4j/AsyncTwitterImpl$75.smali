.class Ltwitter4j/AsyncTwitterImpl$75;
.super Ltwitter4j/AsyncTwitterImpl$AsyncTask;
.source "AsyncTwitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitterImpl;->unsubscribeUserList(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitterImpl;

.field private final val$listId:I

.field private final val$listOwnerScreenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1365
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iput-object p1, p0, Ltwitter4j/AsyncTwitterImpl$75;->this$0:Ltwitter4j/AsyncTwitterImpl;

    iput-object p4, p0, Ltwitter4j/AsyncTwitterImpl$75;->val$listOwnerScreenName:Ljava/lang/String;

    iput p5, p0, Ltwitter4j/AsyncTwitterImpl$75;->val$listId:I

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitterImpl$AsyncTask;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/TwitterListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1367
    .local p1, listeners:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$75;->this$0:Ltwitter4j/AsyncTwitterImpl;

    invoke-static {v3}, Ltwitter4j/AsyncTwitterImpl;->access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/AsyncTwitterImpl$75;->val$listOwnerScreenName:Ljava/lang/String;

    iget v5, p0, Ltwitter4j/AsyncTwitterImpl$75;->val$listId:I

    invoke-interface {v3, v4, v5}, Ltwitter4j/Twitter;->unsubscribeUserList(Ljava/lang/String;I)Ltwitter4j/UserList;

    move-result-object v1

    .line 1368
    .local v1, list:Ltwitter4j/UserList;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/TwitterListener;

    .line 1370
    .local v2, listener:Ltwitter4j/TwitterListener;
    :try_start_0
    invoke-interface {v2, v1}, Ltwitter4j/TwitterListener;->unsubscribedUserList(Ltwitter4j/UserList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1371
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1374
    .end local v2           #listener:Ltwitter4j/TwitterListener;
    :cond_0
    return-void
.end method
