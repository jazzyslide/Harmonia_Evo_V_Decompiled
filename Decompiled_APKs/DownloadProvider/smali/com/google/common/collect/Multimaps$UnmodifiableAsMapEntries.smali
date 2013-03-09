.class Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;
.super Lcom/google/common/collect/ForwardingSet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableAsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 886
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries<TK;TV;>;"
    .local p1, delegate:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 887
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->delegate:Ljava/util/Set;

    .line 888
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 915
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 919
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries<TK;TV;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 883
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 883
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 923
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->setEquals(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 895
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->delegate:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 896
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v1, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;-><init>(Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 907
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries<TK;TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 911
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries<TK;TV;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
