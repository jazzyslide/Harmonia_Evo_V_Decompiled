.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateRecommendAppLastViewDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;


# instance fields
.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$104400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104700()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->memoizedSerializedSize:I

    move v1, v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$104500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
