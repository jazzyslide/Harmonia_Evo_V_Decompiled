.class public Lcom/htc/app/ma/MaStateAgent;
.super Ljava/lang/Object;
.source "MaStateAgent.java"


# instance fields
.field private mHost:Lcom/htc/app/ma/IMaStateOwner;

.field private mStates:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/app/ma/IMaStateOwner;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/ma/MaStateAgent;->mHost:Lcom/htc/app/ma/IMaStateOwner;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/ma/MaStateAgent;->mStates:Ljava/util/TreeMap;

    iput-object p1, p0, Lcom/htc/app/ma/MaStateAgent;->mHost:Lcom/htc/app/ma/IMaStateOwner;

    return-void
.end method

.method private getCurrentMaChild()Lcom/htc/app/ma/IMaStateOwner;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/app/ma/MaStateAgent;->mHost:Lcom/htc/app/ma/IMaStateOwner;

    instance-of v1, v1, Landroid/app/ActivityGroup;

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaStateAgent;->mHost:Lcom/htc/app/ma/IMaStateOwner;

    check-cast v1, Landroid/app/ActivityGroup;

    invoke-virtual {v1}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/app/ma/IMaStateOwner;

    if-nez v1, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/htc/app/ma/IMaStateOwner;

    goto :goto_0
.end method


# virtual methods
.method getState(I)I
    .locals 3

    iget-object v1, p0, Lcom/htc/app/ma/MaStateAgent;->mStates:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v1, -0x8000

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method onStateChanged(III)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/ma/MaStateAgent;->mHost:Lcom/htc/app/ma/IMaStateOwner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/app/ma/MaStateAgent;->mHost:Lcom/htc/app/ma/IMaStateOwner;

    instance-of v1, v1, Lcom/htc/app/ma/MaMainActivity;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/app/ma/MaStateAgent;->getCurrentMaChild()Lcom/htc/app/ma/IMaStateOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/app/ma/IMaStateOwner;->onStateChanged(III)V

    goto :goto_0
.end method

.method setState(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaStateAgent;->getState(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/app/ma/MaStateAgent;->mStates:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaStateAgent;->mHost:Lcom/htc/app/ma/IMaStateOwner;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/app/ma/IMaStateOwner;->onStateChanged(III)V

    :cond_0
    return-void
.end method
