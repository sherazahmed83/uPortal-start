<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License. You may obtain a
    copy of the License at:

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on
    an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied. See the License for the
    specific language governing permissions and limitations
    under the License.

--%>

<%@ include file="/WEB-INF/jsp/include.jsp" %>
<portlet:renderURL var="backUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="cancel"/>
</portlet:renderURL>
<portlet:renderURL var="saveUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="save"/>
</portlet:renderURL>
<portlet:renderURL var="deleteUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="deleteGroup"/>
</portlet:renderURL>
<portlet:renderURL var="editDetailsUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="editDetails"/>
</portlet:renderURL>
<portlet:renderURL var="editMembersUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="editMembers"/>
</portlet:renderURL>
<portlet:renderURL var="createMemberUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="createMember"/>
</portlet:renderURL>
<c:set var="n"><portlet:namespace/></c:set>

<!-- Portlet -->
<div class="fl-widget portlet" role="section">
    
    <!-- Portlet Title -->
    <div class="fl-widget-titlebar portlet-title" role="sectionhead">
        <h2 role="heading"><c:out value="${ group.name }"/></h2>
        <p>Created by ${ group.creatorId }</p>
    </div> <!-- end: portlet-title -->
    
    <!-- Portlet Body -->
    <div class="fl-widget-content portlet-body" role="main">
    
        <!-- Portlet Section -->
        <div class="portlet-section" role="region">
            <h3 class="portlet-section-header" role="heading">Description</h3>
            <div class="portlet-section-options">
                <a href="${ editDetailsUrl }"><span>Edit Name and Description</span></a>
            </div>
            <div class="portlet-section-body">
                <p>${ group.description }</p>
                <c:if test="${ not empty group.key }">
                    <p>
                        <a href="${ deleteUrl }">Delete</a>
                    </p>
                </c:if>
            </div>
        </div>
        
        <!-- Portlet Section -->
        <div class="portlet-section" role="region">
            <h3 class="portlet-section-header" role="heading">Members</h3>
            <div class="portlet-section-options">
                <a href="${ editMembersUrl }"><span>Edit Members</span></a>
            </div>
            <div class="portlet-section-body">
                <ul class="group-member">
                    <c:forEach items="${ group.members }" var="child">
                        <li><a href="${ editMembersUrl }">${ child.name }</a></li>
                    </c:forEach>
                </ul>
                <br/>
                <p><a href="${ createMemberUrl }">Create new member group</a></p>
            </div>
        </div>
        
        <div class="portlet-button-group">
            <a class="portlet-button" href="${ cancelUrl }">Cancel</a>
            <a class="portlet-button portlet-button-primary" href="${ saveUrl }">Save</a>
        </div>
    </div>
</div>