<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
			<div
				class="react-modal react-modal--center review-modal__modal__wrap open-active" id="reviewModal">
				<div class="react-modal__content-wrap">
					<div class="react-modal__content review-modal__modal">
						<div class="review-modal" style="width: auto;">
							<div class="review-modal__title">
								리뷰 쓰기
								<button type="button" class="review-modal__close">
									<svg class="review-modal__close__icon" width="20" height="20"
										viewBox="0 0 20 20" fill="currentColor"
										preserveAspectRatio="xMidYMid meet">
										<path fill-rule="nonzero"
											d="M11.6 10l7.1 7.1-1.6 1.6-7.1-7.1-7.1 7.1-1.6-1.6L8.4 10 1.3 2.9l1.6-1.6L10 8.4l7.1-7.1 1.6 1.6z"></path></svg>
								</button>
							</div>
							<div class="review-modal__point-explain">
								<svg class="review-modal__point-explain__icon" width="24"
									height="24" viewBox="0 0 24 24"
									preserveAspectRatio="xMidYMid meet">
									<path
										d="M12 0c6.627 0 12 5.373 12 12s-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0zm1 5H9.897l-.194.01C8.746 5.11 8 5.934 8 6.938v10.569l.01.198c.097.977.905 1.74 1.887 1.74 1.047 0 1.896-.868 1.896-1.938v-2.29H13l.248.006c2.479-.01 4.752-2.186 4.752-5.115C18 7.375 15.683 5 13 5zm0 3.875l.135.011c.543.087 1.072.672 1.072 1.222 0 .755-.558 1.265-1.108 1.236l-1.306-.003V8.875H13z"></path></svg>
								포토리뷰&nbsp;<span class="review-modal__point-explain__value">500P</span>,&nbsp;
								일반리뷰&nbsp;<span class="review-modal__point-explain__value">100P</span>
							</div>
							<form class="review-modal__form">
								<div class="review-modal__form__product">
									<img class="review-modal__form__product__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157966092380961868.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157966092380961868.jpg?gif=1&amp;w=160&amp;h=160&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157966092380961868.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157966092380961868.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1 3x">
									<div class="review-modal__form__product__contents">
										<div class="review-modal__form__product__contents__brand">마틸라</div>
										<div class="review-modal__form__product__contents__name">밸런스
											M2 알러지케어 차렵이불(단품/세트) 9종</div>
										<div class="review-modal__form__product__contents__options">컬러:
											02. 오트밀 / 구성: SS이불패드세트</div>
									</div>
								</div>
								<div class="review-modal__section">
									<div class="review-modal__section__title">별점 평가</div>
									<div class="review-modal__form__star__wrap">
										<div class="review-modal__form__star">
											<div class="review-modal__form__star__label">내구성</div>
											<div class="review-modal__form__star__value">
												<ul class="rating-input">
													<li><label class="rating-input__star"
														aria-label="별점 1점"><input type="radio" value="1">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 2점"><input type="radio" value="2">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 3점"><input type="radio" value="3">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 4점"><input type="radio" value="4">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 5점"><input type="radio" value="5">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
												</ul>
											</div>
										</div>
										<div class="review-modal__form__star">
											<div class="review-modal__form__star__label">가격</div>
											<div class="review-modal__form__star__value">
												<ul class="rating-input">
													<li><label class="rating-input__star"
														aria-label="별점 1점"><input type="radio" value="1">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 2점"><input type="radio" value="2">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 3점"><input type="radio" value="3">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 4점"><input type="radio" value="4">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 5점"><input type="radio" value="5">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
												</ul>
											</div>
										</div>
										<div class="review-modal__form__star">
											<div class="review-modal__form__star__label">디자인</div>
											<div class="review-modal__form__star__value">
												<ul class="rating-input">
													<li><label class="rating-input__star"
														aria-label="별점 1점"><input type="radio" value="1">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 2점"><input type="radio" value="2">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 3점"><input type="radio" value="3">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 4점"><input type="radio" value="4">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 5점"><input type="radio" value="5">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
												</ul>
											</div>
										</div>
										<div class="review-modal__form__star">
											<div class="review-modal__form__star__label">배송</div>
											<div class="review-modal__form__star__value">
												<ul class="rating-input">
													<li><label class="rating-input__star"
														aria-label="별점 1점"><input type="radio" value="1">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 2점"><input type="radio" value="2">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 3점"><input type="radio" value="3">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 4점"><input type="radio" value="4">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 5점"><input type="radio" value="5">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="review-modal__section">
									<div class="review-modal__section__title">
										사진 첨부 (선택) <img class="review-modal__form__photo-point"
											src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/157654714042406347.png?gif=1&amp;w=240&amp;webp=1"
											srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/157654714042406347.png?gif=1&amp;w=360&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/157654714042406347.png?gif=1&amp;w=480&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/157654714042406347.png?gif=1&amp;w=720&amp;webp=1 3x">
									</div>
									<div class="review-modal__section__explain">사진을 첨부해주세요.
										(최대 1장)</div>
									<button
										class="button button--color-blue-inverted button--size-50 button--shape-4 upload-button"
										type="button">
										<svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path
												d="M21.1 4c.5 0 .9.4.9.9v14.2c0 .5-.4.9-.9.9H2.9a.9.9 0 01-.9-.9V4.9c0-.5.4-.9.9-.9h18.2zm-.91 1.8H3.8v10.85l5.54-6.27c.12-.17.38-.17.52 0l3.1 3.54c.06.06.08.14.06.2l-.4 1.84c-.02.14.15.23.23.12l3.16-3.43a.27.27 0 01.38 0l3.79 4.12V5.8zm-3.37 4.8a1.47 1.47 0 01-1.47-1.45c0-.81.66-1.46 1.47-1.46s1.48.65 1.48 1.46c0 .8-.66 1.45-1.48 1.45z"></path></svg>
										사진 첨부하기
									</button>
								</div>
								<div class="review-modal__section">
									<div class="review-modal__section__title">리뷰 작성</div>
									<textarea
										placeholder="자세하고 솔직한 리뷰는 다른 고객에게 큰 도움이 됩니다. (최소 20자 이상)"
										class="form-control text-area-input review-modal__form__review-input"
										style="height: 56px;"></textarea>
									<div class="review-modal__form__review-input__length">
										<span class="review-modal__form__review-input__length__value">0</span>
									</div>
								</div>
								<button
									class="button button--color-blue button--size-50 button--shape-4 review-modal__form__submit"
									type="submit">완료</button>
							</form>
							<div class="review-modal__explain" style="width: auto;">
								<ul>
									<li>포인트는 최초 작성한 리뷰를 기준으로 지급됩니다.</li>
									<li>상품과 무관한 내용이나 사진, 동일 문자 반복 등의 부적합한 리뷰는&nbsp; 사전 경고 없이
										삭제 및 포인트 회수될 수 있습니다.</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<script>
	function reviewModalOpen(){
		
		$('#reviewModal').addClass('open');
	}
</script>
